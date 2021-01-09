`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 08:15:49 PM
// Design Name: 
// Module Name: multipler_of_three_tb
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


module multipler_of_three_tb();
    
    // Inputs
	reg a;
	reg clk;
	reg reset;

	// Outputs
	wire b;

	// Instantiate the Unit Under Test (UUT)
	multiplier_of_three uut ( .a(a), .b(b), .clk(clk), .reset(reset));
	reg [7:0]inp;
	reg [7:0] out_seq;
	integer i;
	initial begin
		// Initialize Inputs
		inp[7:0] = 8'b10101101;
		i = 0;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#99;
        reset = 0;
		for(i=0;i<8;i=i+1) begin
			a = inp[i];
			#40;
			out_seq[i] = b;
		end
		
		#119;
	end
	
	always begin
		#20 clk = !clk;
	end
endmodule
