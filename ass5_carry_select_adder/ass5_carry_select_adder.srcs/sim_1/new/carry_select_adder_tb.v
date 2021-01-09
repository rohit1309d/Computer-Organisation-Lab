`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2020 11:52:41 AM
// Design Name: 
// Module Name: carry_select_adder_tb
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