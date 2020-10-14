`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: carry_save_adder
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
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
