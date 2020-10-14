`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2020 07:46:01 PM
// Design Name: 
// Module Name: hybrid_adder
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


module hybrid_adder(input [7:0] a,input [7:0] b,input cin,output [7:0] sum,output cout);
    wire c;
    cla c1(a[3:0],b[3:0],cin,sum[3:0],c);
    cla c2(a[7:4],b[7:4],c,sum[7:4],cout);
endmodule