`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2020 11:51:58 AM
// Design Name: 
// Module Name: carry_select_adder
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

module carry_select_adder(S, C, A, B);
   output [15:0] S;  
   output 	C;   
   input [15:0] 	A;   
   input [15:0] 	B;   

   wire [7:0] 	S0;   
   wire [7:0] 	S1;   
   wire 	C0;   
   wire 	C1;   
   wire 	Clow; 
    
   ripple_carry_adder rc_low_nibble_0(S[7:0], Clow, A[7:0], B[7:0], 0);  
   ripple_carry_adder rc_high_nibble_0(S0, C0, A[15:8], B[15:8], 0);       
   ripple_carry_adder rc_high_nibble_1(S1, C1, A[15:8], B[15:8], 1);       
   mux  muxs(S[15:8], S0, S1, Clow);  
   mux  muxc(C, C0, C1, Clow);
     
endmodule 
