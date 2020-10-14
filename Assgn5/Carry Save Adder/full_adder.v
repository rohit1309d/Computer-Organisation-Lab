`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: carry_save_adder
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module full_adder(output Sum,output Cout,input A,input B,input C);
    assign Sum = (A ^ B) ^ C;
    assign Cout = (A & B) | (B & C) | (C & A);
endmodule
