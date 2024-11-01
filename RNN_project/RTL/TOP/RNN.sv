// MODULE RNN.sv
// A 2-layer, 3-input, 1-output Recurrent Neural Network (RNN).

module RNN #(
    parameter w0_0 = 4'b0000,   // weight w0 of neuron #0
    parameter w1_0 = 4'b0000,   // weight w1 of neuron #0
    parameter w2_0 = 4'b0000,   // weight w2 of neuron #0
    parameter w3_0 = 4'b0000,   // weight w3 of neuron #0
    parameter w0_1 = 4'b0000,   // weight w0 of neuron #1
    parameter w1_1 = 4'b0000,   // weight w1 of neuron #1
    parameter w2_1 = 4'b0000,   // weight w2 of neuron #1
    parameter w3_1 = 4'b0000,   // weight w3 of neuron #1
    parameter w0_2 = 4'b0000,   // weight w0 of neuron #2
    parameter w1_2 = 4'b0000,   // weight w1 of neuron #2
    parameter w2_2 = 4'b0000,   // weight w2 of neuron #2
    parameter w3_2 = 4'b0000,   // weight w3 of neuron #2
    parameter w0_3 = 4'b0000,   // weight w0 of neuron #3
    parameter w1_3 = 4'b0000,   // weight w1 of neuron #3
    parameter w2_3 = 4'b0000,   // weight w2 of neuron #3
    parameter w3_3 = 4'b0000,   // weight w3 of neuron #3
    parameter w0_4 = 4'b0000,   // weight w0 of neuron #4
    parameter w1_4 = 4'b0000,   // weight w1 of neuron #4
    parameter w2_4 = 4'b0000,   // weight w2 of neuron #4
    parameter w3_4 = 4'b0000    // weight w3 of neuron #4
)(
    input   OUT_REQ,            // OUT bundle
    output  OUT_ACK,
    output  OUT_DATA,
    output  IN0_REQ,            // IN0 bundle
    input   IN0_ACK,
    input   IN0_DATA,
    output  IN1_REQ,            // IN1 bundle
    input   IN1_ACK,
    input   IN1_DATA,
    output  IN2_REQ,            // IN2 bundle
    input   IN2_ACK,
    input   IN2_DATA,
    input   CLK,                // global clock
    input   RSTB                // global asynchronous reset
);

wire N0_REQ, N0_ACK, N0_DATA, B0_REQ, B0_ACK, B0_DATA;
wire N1_REQ, N1_ACK, N1_DATA, B1_REQ, B1_ACK, B1_DATA;
wire N2_REQ, N2_ACK, N2_DATA, B2_REQ, B2_ACK, B2_DATA;
wire N3_REQ, N3_ACK, N3_DATA, B3_REQ, B3_ACK, B3_DATA;

NEURON  #(.w0(w0_0), .w1(w1_0), .w2(w2_0), .w3(w3_0))
        N0 (.OUT_REQ(N0_REQ), .OUT_ACK(N0_ACK), .OUT_DATA(N0_DATA),
            .IN0_REQ(IN0_REQ), .IN0_ACK(IN0_ACK), .IN0_DATA(IN0_DATA),
            .IN1_REQ(IN1_REQ), .IN1_ACK(IN1_ACK), .IN1_DATA(IN1_DATA),
            .IN2_REQ(IN2_REQ), .IN2_ACK(IN2_ACK), .IN2_DATA(IN2_DATA),
            .IN3_REQ(B0_REQ), .IN3_ACK(B0_ACK), .IN3_DATA(B0_DATA),
            .CLK, .RSTB);

NEURON  #(.w0(w0_1), .w1(w1_1), .w2(w2_1), .w3(w3_1))
        N1 (.OUT_REQ(N1_REQ), .OUT_ACK(N1_ACK), .OUT_DATA(N1_DATA),
            .IN0_REQ(IN0_REQ), .IN0_ACK(IN0_ACK), .IN0_DATA(IN0_DATA),
            .IN1_REQ(IN1_REQ), .IN1_ACK(IN1_ACK), .IN1_DATA(IN1_DATA),
            .IN2_REQ(IN2_REQ), .IN2_ACK(IN2_ACK), .IN2_DATA(IN2_DATA),
            .IN3_REQ(B1_REQ), .IN3_ACK(B1_ACK), .IN3_DATA(B1_DATA),
            .CLK, .RSTB);

NEURON  #(.w0(w0_2), .w1(w1_2), .w2(w2_2), .w3(w3_2))
        N2 (.OUT_REQ(N2_REQ), .OUT_ACK(N2_ACK), .OUT_DATA(N2_DATA),
            .IN0_REQ(IN0_REQ), .IN0_ACK(IN0_ACK), .IN0_DATA(IN0_DATA),
            .IN1_REQ(IN1_REQ), .IN1_ACK(IN1_ACK), .IN1_DATA(IN1_DATA),
            .IN2_REQ(IN2_REQ), .IN2_ACK(IN2_ACK), .IN2_DATA(IN2_DATA),
            .IN3_REQ(B2_REQ), .IN3_ACK(B2_ACK), .IN3_DATA(B2_DATA),
            .CLK, .RSTB);

NEURON  #(.w0(w0_3), .w1(w1_3), .w2(w2_3), .w3(w3_3))
        N3 (.OUT_REQ(N3_REQ), .OUT_ACK(N3_ACK), .OUT_DATA(N3_DATA),
            .IN0_REQ(IN0_REQ), .IN0_ACK(IN0_ACK), .IN0_DATA(IN0_DATA),
            .IN1_REQ(IN1_REQ), .IN1_ACK(IN1_ACK), .IN1_DATA(IN1_DATA),
            .IN2_REQ(IN2_REQ), .IN2_ACK(IN2_ACK), .IN2_DATA(IN2_DATA),
            .IN3_REQ(B3_REQ), .IN3_ACK(B3_ACK), .IN3_DATA(B3_DATA),
            .CLK, .RSTB);

NEURON  #(.w0(w0_4), .w1(w1_4), .w2(w2_4), .w3(w3_4))
        N4 (.OUT_REQ(OUT_REQ), .OUT_ACK(OUT_ACK), .OUT_DATA(OUT_DATA),
            .IN0_REQ(N0_REQ), .IN0_ACK(N0_ACK), .IN0_DATA(N0_DATA),
            .IN1_REQ(N1_REQ), .IN1_ACK(N1_ACK), .IN1_DATA(N1_DATA),
            .IN2_REQ(N2_REQ), .IN2_ACK(N2_ACK), .IN2_DATA(N2_DATA),
            .IN3_REQ(N3_REQ), .IN3_ACK(N3_ACK), .IN3_DATA(N3_DATA),
            .CLK, .RSTB);

RECBUF  B0 (.IN_ACK(N0_ACK), .IN_DATA(N0_DATA),
            .OUT_REQ(B0_REQ), .OUT_ACK(B0_ACK), .OUT_DATA(B0_DATA),
            .CLK, .RSTB);
RECBUF  B1 (.IN_ACK(N1_ACK), .IN_DATA(N1_DATA),
            .OUT_REQ(B1_REQ), .OUT_ACK(B1_ACK), .OUT_DATA(B1_DATA),
            .CLK, .RSTB);
RECBUF  B2 (.IN_ACK(N2_ACK), .IN_DATA(N2_DATA),
            .OUT_REQ(B2_REQ), .OUT_ACK(B2_ACK), .OUT_DATA(B2_DATA),
            .CLK, .RSTB);
RECBUF  B3 (.IN_ACK(N3_ACK), .IN_DATA(N3_DATA),
            .OUT_REQ(B3_REQ), .OUT_ACK(B3_ACK), .OUT_DATA(B3_DATA),
            .CLK, .RSTB);

endmodule

