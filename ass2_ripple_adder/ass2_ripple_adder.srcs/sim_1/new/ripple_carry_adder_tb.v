`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/16/2020 05:46:53 PM
// Design Name: 
// Module Name: ripple_carry_adder_tb
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


module ripple_carry_adder_tb;
     // Inputs
     reg [7:0] A;
     reg [7:0] B;
     reg Cin;
    
     // Outputs
     wire [7:0]Sum;
     wire Cout;
     
     ripple_carry_adder uut(.A(A), .B(B), .Cin(Cin) , .Sum(Sum), .Cout(Cout));
     
     initial 
     begin
        A = 8'b01010011;
        B = 8'b00110011;
        Cin = 1'b0;
        #300;
        A = 8'b01110011;
        B = 8'b00100111;
        Cin = 1'b0;
        #300;
        A = 8'b01010111;
        B = 8'b00111011;
        Cin = 1'b0;
     end
     
endmodule
