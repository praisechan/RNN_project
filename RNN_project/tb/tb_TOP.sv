`timescale 1ns / 1ps

`define WAIT_POSEDGE(x) @(posedge x); #(1);
`include "common.svh"

module tb_TOP;

  /*---------Parameters and Temporaries---------*/
  parameter  int unsigned RstCycle  = 10;
  parameter  int unsigned MaxCycle  = 10000;
  parameter  time         CyclTime  = 10ns;
  parameter  time         ApplTime  = 2ns;
  
  localparam period = 10;
  localparam PRECISION = 16;

  logic CLK;
  logic RSTB;
  int rpt_fd;

  /*---------------Testbench Quit----------------*/
  event testbench_finish; // This event will finish the testbench.
  initial #(CyclTime*MaxCycle) -> testbench_finish;
  always @(testbench_finish) begin
    $display("The testbench force quit");
    $finish;
  end




  logic [7:0] ref_val;
  logic [7:0] eval_val;

  real ref_val_real;
  real eval_val_real;

  logic OUT_REQ;
  logic OUT_ACK;
  logic OUT_DATA;
  logic IN0_REQ;
  logic IN0_ACK;
  logic IN0_DATA;
  logic IN1_REQ;
  logic IN1_ACK;
  logic IN1_DATA;
  logic IN2_REQ;
  logic IN2_ACK;
  logic IN2_DATA;

  RNN #(
    .w0_0(0),
    .w1_0(0),
    .w2_0(0),
    .w3_0(0),
    .w0_1(0),
    .w1_1(0),
    .w2_1(0),
    .w3_1(0),
    .w0_2(0),
    .w1_2(0),
    .w2_2(0),
    .w3_2(0),
    .w0_3(0),
    .w1_3(0),
    .w2_3(0),
    .w3_3(0),
    .w0_4(0),
    .w1_4(0),
    .w2_4(0),
    .w3_4(0)
  )
  u_RNN
  (
    .OUT_REQ(OUT_REQ),
    .OUT_ACK(OUT_ACK),
    .OUT_DATA(OUT_DATA),
    .IN0_REQ(IN0_REQ),
    .IN0_ACK(IN0_ACK),
    .IN0_DATA(IN0_DATA),
    .IN1_REQ(IN1_REQ),
    .IN1_ACK(IN1_ACK),
    .IN1_DATA(IN1_DATA),
    .IN2_REQ(IN2_REQ),
    .IN2_ACK(IN2_ACK),
    .IN2_DATA(IN2_DATA),
    .CLK(CLK),
    .RSTB(RSTB) 
  );

  initial begin
    CLK = 1'b0;
  end

  always #(period / 2) CLK = ~CLK;

  initial begin
    $fsdbDumpfile("./reports/tb_TOP.fsdb");
    $fsdbDumpvars(0, "+all", "+parameter", "+functions");
    $timeformat(-9, 0, "ns", 0);

    rpt_fd = $fopen("./reports/result.rpt", "w");

    RSTB = 1'b1;
    `WAIT_POSEDGE(CLK);

    RSTB = 1'b0;
    `WAIT_POSEDGE(CLK);

    RSTB = 1'b1;
    `WAIT_POSEDGE(CLK);

    RNN_TEST();

    #(10);
    $fsdbDumpFinish;
    $finish;
  end

  logic [7:0] random_data[1023:0];
  event output_ack;

  always @(posedge CLK)begin
    if(OUT_ACK)->output_ack;
  end

  int i;
  task RNN_TEST();
    begin
      // initialize random data
      for (int u = 0; u < 1024; u++) begin
        std::randomize(random_data[u]);
      end

      ref_val = 0;
      `WAIT_POSEDGE(CLK);
      for (i = 0; i < 8; i++) begin
        for (int j = 0; j < 8; j++) begin
          if(j==0)begin
            IN0_ACK = 1;
            IN1_ACK = 1;
            IN2_ACK = 1;
          end
          else if(j==1)begin
            IN0_ACK = 0;
            IN1_ACK = 0;
            IN2_ACK = 0;
          end
          IN0_DATA = random_data[i*3][j];
          IN1_DATA = random_data[i*3+1][j];
          IN2_DATA = random_data[i*3+2][j];
          `WAIT_POSEDGE(CLK);
        end
        ref_val = random_data[i*3] + random_data[i*3+1] + random_data[i*3+2];

        for (int k = 0; k < 50; k++) begin
          `WAIT_POSEDGE(CLK);
        end

        OUT_REQ =1;
        `WAIT_POSEDGE(CLK);

        @(output_ack);
        OUT_REQ = 0;
        for (int h = 0; h < 8; h++) begin
            eval_val[h] = OUT_DATA;
            `WAIT_POSEDGE(CLK);
        end

        // if (ref_val !== eval_val) begin
        //   $display("%8t false ref_val : %4d,  eval_val : %4d", $time, ref_val, eval_val);
        //   $fdisplay(rpt_fd, "%8t false ref_val : %4d,  eval_val : %4d", $time, ref_val, eval_val);
        // end else begin
        //   $display("%8t true ref_val : %4d,  eval_val : %4d", $time, ref_val, eval_val);
        //   $fdisplay(rpt_fd, "%8t true ref_val : %4d,  eval_val : %4d", $time, ref_val, eval_val);
        // end
      end
    end
  endtask

endmodule
