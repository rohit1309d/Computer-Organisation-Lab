`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2020 09:34:14 AM
// Design Name: 
// Module Name: carry_look_ahead_20_bit
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


module carry_look_ahead_20_bit(input [19:0]a,input [19:0]b,input cin,output [19:0]sum,output cout);
    wire c1,c2,c3,c4;
    carry_look_ahead_4bit cla1 (a[3:0], b[3:0], cin, sum[3:0], c1);
    carry_look_ahead_4bit cla2 (a[7:4], b[7:4], c1, sum[7:4], c2);
    carry_look_ahead_4bit cla3(a[11:8], b[11:8], c2, sum[11:8], c3);
    carry_look_ahead_4bit cla4(a[15:12], b[15:12], c3, sum[15:12], c4);
    carry_look_ahead_4bit cla5(a[19:16], b[19:16], c4, sum[19:16], cout);
endmodule
