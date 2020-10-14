`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 4 
// Project Name:gcd
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////

module tb_gcd;

	reg [31:0] a;
	reg [31:0] b;
	reg clk;
	reg reset;
	wire [31:0] c;
    wire done;

    gcd gcd1(a,b,c,done,clk,reset);

	initial begin
		clk = 0;
		reset = 1;
		end
	always
	#10 clk = ~clk;
	
	
	initial
	begin
	#80;
	reset = 0;
	end

    initial 
    begin
        #30
        a = 32'd36;
	    b = 32'd9;
	    
        $monitor("gcd of (%d,%d) is %d",a,b,c);
    end

endmodule