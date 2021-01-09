`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/17/2020 07:46:58 PM
// Design Name: 
// Module Name: tb_hybrid_adder
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

module tb_hybrid_adder();
    reg[7:0] a;
    reg[7:0] b;
    reg cin;
    wire [7:0] s;
    wire cout;
    hybrid_adder d(a,b,cin,s,cout);
    
initial
 begin
    a=8'b00000000; b=8'b00100101 ;cin=0;#10;
    a=8'b00010010; b=8'b00100111 ;cin=0;#10;
    a=8'b00000100; b=8'b01001001 ;cin=0;#10;
    a=8'b00010110; b=8'b00001011 ;cin=0;#10;
    a=8'b01011000; b=8'b01001101 ;cin=0;#10;
    a=8'b00101010; b=8'b00001111 ;cin=0;#10;
    a=8'b00101100; b=8'b01010001 ;cin=0;#10;
    a=8'b00101110; b=8'b00010011 ;cin=0;#10;
 end
endmodule