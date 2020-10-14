`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: bit_sliced_alu
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////



module alu(S, A, B, M, Cn, F, Cn4);
  input [3:0] A, B, S;
  input Cn, M;
  output [3:0] F;
  output Cn4;
  wire [3:0] E, D, C;
  alu_1 mod1 (A, B, S, E);
  alu_2 mod2 (A, B, S, D);
  cla CLAmod3(E, D, Cn, C, Cn4);
  sum Summod4(E, D, C, M, F);
endmodule
