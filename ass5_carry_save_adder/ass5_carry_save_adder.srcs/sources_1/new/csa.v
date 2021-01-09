`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 10/14/2020 09:36:37 AM
// Design Name:
// Module Name: csa
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


module csa(input [19:0] x,input [19:0] y,input [19:0] z,output[19:0] s,output [19:0] c);
    assign c[0] = 0;
    wire extra;
    genvar i;
    for(i=0;i<19;i=i+1) begin
        full_adder fa1(s[i],c[i+1],x[i],y[i],z[i]);
    end
   full_adder fa20(s[19],extra,x[19],y[19],z[19]);
endmodule
