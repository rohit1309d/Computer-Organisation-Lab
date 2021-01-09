`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/09/2020 12:03:26 PM
// Design Name:
// Module Name: full_adder
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


module full_adder(output Sum,output Cout,input A,input B,input Cin);
    assign Sum = (A ^ B) ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (Cin & A);
endmodule
