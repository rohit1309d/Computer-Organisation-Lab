`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2020 07:53:25 PM
// Design Name: 
// Module Name: twos_complement_tb
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


module twos_complement_tb;

    // Inputs
	reg in;
	reg clk;
	reg reset;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	twos_complement uut (
		.in(in), 
		.clk(clk), 
		.reset(reset), 
		.out(out)
	);
	// Initialize Inputs
	reg [15:0]sequence;
	reg [15:0]output_seq;
	integer i;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		in = 0;
		assign sequence =  16'b0101011101110010;
		i=0;
		// Wait 100 ns for global reset to finish
		#5;
		reset =0;
		for( i = 0; i <= 15; i = i + 1)
		begin
			in = sequence[i];
			clk = 1;
			#2;
			clk = 0;
			#2;
			output_seq[i] = out;
			$display(" Input = ", in, ", Output = ", out);
		end

	end

endmodule
