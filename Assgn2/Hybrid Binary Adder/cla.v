`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2020 07:41:19 PM
// Design Name: 
// Module Name: cla
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

module cla(input [3:0] a,input [3:0] b,input cin,output [3:0] sum,output cout);
    wire [4:1] c;
    wire [3:0] p,g;
    full_adder f1(a[0],b[0],cin,p[0],g[0],sum[0]);
    full_adder f2(a[1],b[1],c[1],p[1],g[1],sum[1]);
    full_adder f3(a[2],b[2],c[2],p[2],g[2],sum[2]);
    full_adder f4(a[3],b[3],c[3],p[3],g[3],sum[3]);
    carry_calc clc(p,g,cin,c);
    assign cout=c[4];
endmodule
