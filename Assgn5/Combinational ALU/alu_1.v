`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: combinational_alu
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module alu_1(A, B, S, E);
  input [3:0] A, B, S;
  output [3:0] E;
  wire [3:0]  x, y;
  assign x = A&B&{4{S[3]}};
  assign y = A&~B&{4{S[2]}};
  assign E = ~(x|y);
endmodule
