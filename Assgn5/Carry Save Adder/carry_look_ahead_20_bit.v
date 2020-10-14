`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: carry_save_adder
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////



module carry_look_ahead_20_bit(input [19:0]a,input [19:0]b,input cin,output [19:0]sum,output cout);
    wire c1,c2,c3,c4;
    carry_look_ahead_4bit cla1 (a[3:0], b[3:0], cin, sum[3:0], c1);
    carry_look_ahead_4bit cla2 (a[7:4], b[7:4], c1, sum[7:4], c2);
    carry_look_ahead_4bit cla3(a[11:8], b[11:8], c2, sum[11:8], c3);
    carry_look_ahead_4bit cla4(a[15:12], b[15:12], c3, sum[15:12], c4);
    carry_look_ahead_4bit cla5(a[19:16], b[19:16], c4, sum[19:16], cout);
endmodule
