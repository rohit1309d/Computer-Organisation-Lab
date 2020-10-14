`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: carry_select_adder
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module carry_select_adder_tb;
     // Inputs
     reg [15:0] A;
     reg [15:0] B;

     // Outputs
     wire [15:0]Sum;
     wire C;

     carry_select_adder uut(.A(A), .B(B), .C(C) , .S(Sum));

     initial
     begin
        A = 16'b0101001101010011;
        B = 16'b0101001100110011;
        #300;
        A = 16'b0111010100110011;
        B = 16'b0010101001100111;
        #300;
        A = 16'b0100101100110111;
        B = 16'b0010010000111011;
     end

endmodule
