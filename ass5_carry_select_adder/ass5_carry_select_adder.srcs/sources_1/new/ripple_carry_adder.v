`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2020 11:56:54 AM
// Design Name: 
// Module Name: ripple_carry_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module ripple_carry_adder(S, Cout, A, B, Cin);
   output [7:0] S;   
   output 	Cout;   
   input [7:0] 	A;   
   input [7:0] 	B;   
   input 	Cin;  
	
    wire [6:0] C;
   full_adder fa0(S[0], C[0], A[0], B[0], Cin);    
   full_adder fa1(S[1], C[1], A[1], B[1], C[0]);
   full_adder fa2(S[2], C[2], A[2], B[2], C[1]);
   full_adder fa3(S[3], C[3], A[3], B[3], C[2]);
   full_adder fa4(S[4], C[4], A[4], B[4], C[3]);    
   full_adder fa5(S[5], C[5], A[5], B[5], C[4]);
   full_adder fa6(S[6], C[6], A[6], B[6], C[5]);
   full_adder fa7(S[7], Cout, A[7], B[7], C[6]);    
endmodule 