`timescale 1 ns / 100 ps
//(delay of 1ns ,fractions rounded off to 100ps)
`define TESTVECS 16

module tb;
  reg clk, reset;
  reg [1:0] op; reg [15:0] in;
  reg [3:0]ctrl;
  wire [15:0] out;
  reg [21:0] test_vecs [0:(`TESTVECS-1)];
  integer i;
  initial begin $dumpfile("tb_shift.vcd"); $dumpvars(0,tb); end
  initial begin reset = 1'b1; #12.5 reset = 1'b0; end
  initial clk = 1'b0; always #5 clk =~ clk;
  initial begin
    test_vecs[0][21:20] = 2'b00; test_vecs[0][19:16] = 4'b0001;test_vecs[0][15:0] = 16'h75ab;//left shift by 1 bits
    test_vecs[1][21:20] = 2'b00; test_vecs[1][19:16] = 4'b0010;test_vecs[1][15:0] = 16'h75ab;//left shift by 2 bits
    test_vecs[2][21:20] = 2'b00; test_vecs[2][19:16] = 4'b0100;test_vecs[2][15:0] = 16'h75ab;//" by 4 bits
    test_vecs[3][21:20] = 2'b00; test_vecs[3][19:16] = 4'b1000;test_vecs[3][15:0] = 16'h75ab;//" by 8 bits
    test_vecs[4][21:20] = 2'b01; test_vecs[4][19:16] = 4'b0001;test_vecs[4][15:0] = 16'h75ab;//right shift by 1 bit
    test_vecs[5][21:20] = 2'b01; test_vecs[5][19:16] = 4'b0010;test_vecs[5][15:0] = 16'h75ab;// "by 2 bits
    test_vecs[6][21:20] = 2'b01; test_vecs[6][19:16] = 4'b0100;test_vecs[6][15:0] = 16'h75ab;//" by 4 bits
    test_vecs[7][21:20] = 2'b01; test_vecs[7][19:16] = 4'b1000;test_vecs[7][15:0] = 16'h75ab;//" by 8 bits
    test_vecs[8][21:20] = 2'b10; test_vecs[8][19:16] = 4'b0001;test_vecs[8][15:0] = 16'h75ab;//rotate left by 1 bit
    test_vecs[9][21:20] = 2'b10; test_vecs[9][19:16] = 4'b0010;test_vecs[9][15:0] = 16'h75ab;//rotate by 2 bits
    test_vecs[10][21:20] = 2'b10; test_vecs[10][19:16] = 4'b0100;test_vecs[10][15:0] = 16'h75ab;// by 4 bits
    test_vecs[11][21:20] = 2'b10; test_vecs[11][19:16] = 4'b1000;test_vecs[11][15:0] = 16'h75ab;//"by 8 bits
    test_vecs[12][21:20] = 2'b11; test_vecs[12][19:16] = 4'b0001;test_vecs[12][15:0] = 16'h75ab;//rotate right by 1 bit
    test_vecs[13][21:20] = 2'b11; test_vecs[13][19:16] = 4'b0010;test_vecs[13][15:0] = 16'h75ab;//" by 2 bits
    test_vecs[14][21:20] = 2'b11; test_vecs[14][19:16] = 4'b0100;test_vecs[14][15:0] = 16'h75ab;//" by 4 bits
    test_vecs[15][21:20] = 2'b11; test_vecs[15][19:16] = 4'b1000;test_vecs[15][15:0] = 16'h75ab;//" by 8 bits
  end
  initial {in,ctrl,op} = 0;
  alu alu_0 (in,ctrl,op,out);
  initial begin
    #6 for(i=0;i<`TESTVECS;i=i+1)
      begin #10 {op,ctrl,in}=test_vecs[i]; end
    #100 $finish;
  end
endmodule

 

