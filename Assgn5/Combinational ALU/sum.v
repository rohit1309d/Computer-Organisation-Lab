`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: combinational_alu
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module sum(E, D, C, M, F, AeqB);
  input [3:0] E, D, C;
  input M;
  output [3:0] F;
  output AeqB;
  assign F = (E ^ D) ^ (C|{4{M}});
  assign AeqB = &F;
endmodule
