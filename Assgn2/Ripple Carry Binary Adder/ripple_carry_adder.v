`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 05:46:06 PM
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



module ripple_carry_adder(A,B,Cin,Sum,Cout);
    
    input [7:0]A;
    input [7:0]B;
    input Cin;
    output [7:0]Sum; 
    output Cout;
    
    wire [7:0]Temp;
    
    full_adder f0( .A(A[0]), .B(B[0]), .Cin(Cin) , .Sum(Sum[0]), .Cout(Temp[0]));
    full_adder f1( .A(A[1]), .B(B[1]), .Cin(Temp[0]) , .Sum(Sum[1]), .Cout(Temp[1]));
    full_adder f2( .A(A[2]), .B(B[2]), .Cin(Temp[1]) , .Sum(Sum[2]), .Cout(Temp[2]));
    full_adder f3( .A(A[3]), .B(B[3]), .Cin(Temp[2]) , .Sum(Sum[3]), .Cout(Temp[3]));
    full_adder f4( .A(A[4]), .B(B[4]), .Cin(Temp[3]) , .Sum(Sum[4]), .Cout(Temp[4]));
    full_adder f5( .A(A[5]), .B(B[5]), .Cin(Temp[4]) , .Sum(Sum[5]), .Cout(Temp[5]));
    full_adder f6( .A(A[6]), .B(B[6]), .Cin(Temp[5]) , .Sum(Sum[6]), .Cout(Temp[6]));
    full_adder f7( .A(A[7]), .B(B[7]), .Cin(Temp[6]) , .Sum(Sum[7]), .Cout(Cout));
    
endmodule

