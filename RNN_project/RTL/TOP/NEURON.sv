// MODULE NEURON.sv
// A 4-input neuron unit with ReLU activation function.
//
// by <Student Name 1>, <Student ID 1>
// and <Student Name 2>, <Student ID 2>

module NEURON #(
    parameter w0 = 4'b0000,     // weight w0 for IN0
    parameter w1 = 4'b0000,     // weight w1 for IN1
    parameter w2 = 4'b0000,     // weight w2 for IN2
    parameter w3 = 4'b0000      // weight w3 for IN3
)(
    input       OUT_REQ,        // OUT bundle
    output reg  OUT_ACK,
    output reg  OUT_DATA,
    output reg  IN0_REQ,        // IN0 bundle
    input       IN0_ACK,
    input       IN0_DATA,
    output reg  IN1_REQ,        // IN1 bundle
    input       IN1_ACK,
    input       IN1_DATA,
    output reg  IN2_REQ,        // IN2 bundle
    input       IN2_ACK,
    input       IN2_DATA,
    output reg  IN3_REQ,        // IN3 bundle
    input       IN3_ACK,
    input       IN3_DATA,
    input       CLK,            // global clock
    input       RSTB            // global asynchronous reset
);

// Internal state enumeration
typedef enum {
  IDLE,
  RECV,
  COMP,
  SEND
} state_type;

state_type state;

// Internal data and computation registers
logic [7:0] data[3:0];               // Array for input data
logic [2:0] recv_bit_counter[3:0];        // Bit counters for each input
logic [3:0] recv_flag; //if 8bit data is received, raise flag
logic signed [11:0] sum;             // Accumulation register
logic signed [7:0] output_data;      // Output after ReLU activation
logic signed [11:0] scaled_data [3:0];
logic [2:0] send_bit_counter;        // Bit counters for each output

// State transition logic
always_ff @(posedge CLK or negedge RSTB) begin
    if (!RSTB) begin
        state <= IDLE;
    end else begin
      case(state)
          IDLE: begin
              if (IN0_ACK || IN1_ACK || IN2_ACK || IN3_ACK) begin
                  state <= RECV;
              end
          end
          RECV: begin
              if (recv_flag == 4'b1111) begin  // All data fully received
                  state <= COMP;
              end
          end
          COMP: begin
              if (OUT_REQ) begin
                  state <= SEND;
              end
          end
          SEND: begin
              if (send_bit_counter == 3'b111) begin
                  state <= IDLE;
              end
          end
      endcase
    end
end

// Data reception logic for bit-serial input
always_ff @(posedge CLK or negedge RSTB) begin
    if (!RSTB) begin
        for (int i = 0; i < 4; i++) begin
            data[i] <= 8'b0;
            recv_bit_counter[i] <= 3'b000;
        end
        OUT_ACK <= 0;
        OUT_DATA <= 8'b0;
        IN0_REQ <= 1;
        IN1_REQ <= 1;
        IN2_REQ <= 1;
        IN3_REQ <= 1;
        send_bit_counter <= 0;
    end
    case(state)
        IDLE:begin
            send_bit_counter <= 0;
            OUT_ACK <= 0;              // Deassert ACK after output is sent
            OUT_DATA <= 0;
            if (IN0_ACK) begin
                IN0_REQ <= 0;
                data[0] <= {IN0_DATA, data[0][7:1]}; // Shift in LSB first
                recv_bit_counter[0] <= recv_bit_counter[0] + 1;
            end
            if (IN1_ACK) begin
                IN1_REQ <= 0;
                data[1] <= {IN1_DATA, data[1][7:1]}; // Shift in LSB first
                recv_bit_counter[1] <= recv_bit_counter[1] + 1;
            end
            if (IN2_ACK) begin
                IN2_REQ <= 0;
                data[2] <= {IN2_DATA, data[2][7:1]}; // Shift in LSB first
                recv_bit_counter[2] <= recv_bit_counter[2] + 1;
            end
            if (IN3_ACK) begin
                IN3_REQ <= 0;
                data[3] <= {IN3_DATA, data[3][7:1]}; // Shift in LSB first
                recv_bit_counter[3] <= recv_bit_counter[3] + 1;
            end
        end
        RECV:begin
            if (IN0_ACK || recv_bit_counter[0]!=0) begin                
                IN0_REQ <= 0;
                data[0] <= {IN0_DATA, data[0][7:1]}; // Shift in LSB first
                recv_bit_counter[0] <= recv_bit_counter[0] + 1;
                if (recv_bit_counter[0] == 3'b111) begin
                    recv_bit_counter[0] <= 3'b000;
                    recv_flag[0] <= 1;
                end
            end
            if (IN1_ACK || recv_bit_counter[1]!=0) begin
                IN1_REQ <= 0;
                data[1] <= {IN1_DATA, data[1][7:1]}; // Shift in LSB first
                recv_bit_counter[1] <= recv_bit_counter[1] + 1;
                if (recv_bit_counter[1] == 3'b111) begin
                    recv_bit_counter[1] <= 3'b000;
                    recv_flag[1] <= 1;
                end
            end
            if (IN2_ACK || recv_bit_counter[2]!=0) begin
                IN2_REQ <= 0;
                data[2] <= {IN2_DATA, data[2][7:1]}; // Shift in LSB first
                recv_bit_counter[2] <= recv_bit_counter[2] + 1;
                if (recv_bit_counter[2] == 3'b111) begin
                    recv_bit_counter[2] <= 3'b000;
                    recv_flag[2] <= 1;
                end
            end
            if (IN3_ACK || recv_bit_counter[3]!=0) begin
                IN3_REQ <= 0;
                data[3] <= {IN3_DATA, data[3][7:1]}; // Shift in LSB first
                recv_bit_counter[3] <= recv_bit_counter[3] + 1;
                if (recv_bit_counter[3] == 3'b111) begin
                    recv_bit_counter[3] <= 3'b000;
                    recv_flag[3] <= 1;
                end
            end
        end
        COMP:begin
            recv_flag <= 4'b0;
            if(OUT_REQ) begin
              OUT_ACK <= 1;              // Signal output is ready        
              OUT_DATA <= output_data[0];
            end
        end
        SEND:begin
            OUT_ACK <= 0;
            OUT_DATA <= (send_bit_counter < 3'b111)?output_data[send_bit_counter + 1]:0;
            send_bit_counter <= send_bit_counter + 3'b1;
            if(send_bit_counter==3'b111)begin
                IN0_REQ <= 1;
                IN1_REQ <= 1;
                IN2_REQ <= 1;
                IN3_REQ <= 1;
            end
        end
    endcase    
end

// Arithmetic computation logic
always_comb begin
    scaled_data[0] = (w0[3] ? ~data[0]+1 : data[0]) >>> w0[2:0];
    scaled_data[1] = (w1[3] ? ~data[1]+1 : data[1]) >>> w1[2:0];
    scaled_data[2] = (w2[3] ? ~data[2]+1 : data[2]) >>> w2[2:0];
    scaled_data[3] = (w3[3] ? ~data[3]+1 : data[3]) >>> w3[2:0];
    sum = scaled_data[0] + scaled_data[1] + scaled_data[2] + scaled_data[3];
    output_data = (sum > 0)? (sum < 8'b0111_1111 ? sum[7:0]: 8'b0111_1111): 8'b0; // Apply ReLU
end
endmodule