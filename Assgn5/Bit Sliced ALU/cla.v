`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: bit_sliced_alu
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////



module cla(G, P, Cn, C, Cn4);
  input [3:0] G, P;
  input Cn;
  output [3:0] C;
  output Cn4;
  wire Y;
  assign C[0] = ~Cn;
  assign C[1] = ~(P[0]|(Cn&G[0]));
  assign C[2] = ~(P[1]|(P[0]&G[1])|(Cn&G[0]&G[1]));
  assign C[3] = ~(P[2]|(P[1]&G[2])|(P[0]&G[1]&G[2])|(Cn&G[0]&G[1]&G[2]));
  assign Y = ~(P[3]|(P[2]&G[3])|(P[1]&G[2]&G[3])|(P[0]&G[1]&G[2]&G[3]));
  assign Cn4 = (Y&(&G&Cn));
endmodule
