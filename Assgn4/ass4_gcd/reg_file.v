`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 4 
// Project Name:gcd
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////

module reg_file(
    input clk,
    input reset,
    input load,
    input [31:0] data,
    output [31:0] out
    );
	
	reg [31:0] out;
	always@(posedge clk)
	begin
	if(reset == 1'b1) begin
		out <= 0;
	end else if(load == 1'b1) begin
		out <= data;
	end else begin
		out <= out;
	end
	end

endmodule
