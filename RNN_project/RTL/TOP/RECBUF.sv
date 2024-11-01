// MODULE RECBUF.sv
// A data buffer for recurrent input.

module RECBUF #(
    parameter init_data = 8'b0000_0000      // initial data value
)(
    input       IN_ACK,
    input       IN_DATA,
    input       OUT_REQ,
    output reg  OUT_ACK,
    output reg  OUT_DATA,
    input       CLK,            // global clock
    input       RSTB            // global asynchronous reset
);

enum logic [1:0] {INIT=2'b00, READY, ACTIVE} state_wr, state_rd;
reg [7:0] fifo;
reg [2:0] pos_wr, pos_rd;

always @(posedge CLK or negedge RSTB) begin
    if (!RSTB) state_wr = INIT;
    else begin
        case (state_wr)
        READY:
            if (IN_ACK) begin
                fifo[0] = IN_DATA;
                state_wr = ACTIVE;
                pos_wr = 1;
            end
            else begin
                state_wr = READY;
                pos_wr = 0;
            end

        ACTIVE: begin
            fifo[pos_wr] = IN_DATA;
            state_wr = (pos_wr < 7) ? ACTIVE : READY;
            pos_wr++;
        end

        default: begin      // INIT
            fifo = init_data;
            state_wr = READY;
            pos_wr = 0;
        end
        endcase
    end
end

always @(posedge CLK or negedge RSTB) begin
    if (!RSTB) state_rd  = INIT;
    else begin
        case (state_rd)
        READY:
            if (OUT_REQ) begin
                OUT_ACK = 1;
                OUT_DATA = fifo[0];
                state_rd = ACTIVE;
                pos_rd = 1;
            end
            else begin
                OUT_ACK = 0;
                OUT_DATA = 0;
                state_rd = READY;
                pos_rd = 0;
            end

        ACTIVE: begin
            OUT_ACK = 0;
            OUT_DATA = fifo[pos_rd];
            state_rd = (pos_rd < 7) ? ACTIVE : READY;
            pos_rd++;
        end

        default: begin      // INIT
            OUT_ACK = 0;
            OUT_DATA = 0;
            state_rd = READY;
            pos_rd = 0;
        end
        endcase
    end 
end    

endmodule

