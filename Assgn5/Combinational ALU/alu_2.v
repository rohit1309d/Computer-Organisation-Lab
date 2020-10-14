`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: combinational_alu
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module alu_2(A, B, S, D);
  input [3:0] A, B, S;
  output [3:0] D;
  wire [3:0]  p, q;
  assign p = ~B&{4{S[1]}};
  assign q = B&{4{S[0]}};
  assign D = ~(p|q|A);
endmodule
