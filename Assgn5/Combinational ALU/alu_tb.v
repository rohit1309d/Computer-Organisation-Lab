`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: combinational_alu
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module alu_tb;
    reg [3:0]A,B,S;
    reg Cn,M;
    wire [3:0]F;
    wire X, Y, Cn4, AeqB;
    alu f(S, A, B, M, Cn, F, X, Y, Cn4, AeqB);
    initial begin
        A=4'b0000;B=4'b0000;S=4'b0000;Cn=1'b0;M=1'b0;
        #100
        // M = 0 ; Cn = 1
        $display("Output for M=0");

        A=4'b0010;B=4'b0001;S=4'b0000;Cn=1'b1;M=1'b0;
        $monitor("F=%b,X=%b,Y=%b,Cn4=%b,AeqB=%b",F,X,Y,Cn4,AeqB); // F = A
    end
endmodule
