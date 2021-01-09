`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/09/2020 12:06:36 PM
// Design Name:
// Module Name: mux
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


module mux( out,in1, in2, select);
    input [7:0] in1;
    input [7:0] in2;
    input select;
    output [7:0] out;
    assign out = select ? in2 : in1;
endmodule
