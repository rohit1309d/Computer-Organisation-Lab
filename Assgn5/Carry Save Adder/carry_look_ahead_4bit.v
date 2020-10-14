`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: carry_save_adder
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////



module carry_look_ahead_4bit(input [3:0]a,input [3:0]b,input cin,output [3:0]sum,output cout);

    wire [3:0] p,g,c;

    assign p=a^b;
    assign g=a&b;

    assign c[0]=cin;
    assign c[1]= g[0]|(p[0]&c[0]);
    assign c[2]= g[1] | (p[1]&g[0]) | (p[1]&p[0]&c[0]);
    assign c[3]= g[2] | (p[2]&g[1]) | (p[2]&p[1]&g[0]) | (p[2]&p[1]&p[0]&c[0]);
    assign cout= g[3] | (p[3]&g[2]) | (p[3]&p[2]&g[1]) | (p[3]&p[2]&p[1]&p[0]&c[0]);
    assign sum=p^c;
 endmodule
