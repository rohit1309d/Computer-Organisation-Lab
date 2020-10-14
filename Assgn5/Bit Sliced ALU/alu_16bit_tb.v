`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: bit_sliced_alu
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////



module alu_16bit_tb;
    reg [15:0]A,B;
    reg [3:0]S;
    reg Cn,M;
    wire [15:0]F;
    wire Cn16;
    bit_sliced_alu f(S, A, B, M, Cn, F, Cn16);
    initial begin
        A=0;
        B=0;
        S=0;
        Cn=0;
        M=0;
        #100
        $display("Output for M=0");

        A=2;B=1;S=4'b0000;Cn=1'b1;M=1'b0;
        $monitor("F=%b,Cn16=%b",F,Cn16);
        #100
        A=16'b0000100100100010;B=16'b0010010001100100;S=4'b0001;Cn=1'b1;M=1'b0;
        $monitor("F=%b,Cn16=%b",F,Cn16);
    end
endmodule
