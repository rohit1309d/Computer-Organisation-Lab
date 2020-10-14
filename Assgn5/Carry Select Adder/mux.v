`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: carry_select_adder
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module mux( out,in1, in2, select);
    input [7:0] in1;
    input [7:0] in2;
    input select;
    output [7:0] out;
    assign out = select ? in2 : in1;
endmodule
