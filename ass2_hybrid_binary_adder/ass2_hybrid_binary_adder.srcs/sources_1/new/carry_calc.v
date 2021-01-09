`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2020 07:39:59 PM
// Design Name: 
// Module Name: carry_calc
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


module carry_calc(input [3:0] p,input [3:0] g,input cin,output [4:1] c);
    assign c[1]=g[0]|(p[0]&cin);
    assign c[2]=g[1]|(p[1]&(g[0]|(p[0]&cin)));
    assign c[3]=g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))));
    assign c[4]=g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&cin)))))));
endmodule
