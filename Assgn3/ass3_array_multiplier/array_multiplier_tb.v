`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 3 verilog design of binary multipliers
// Create Date: 09/24/2020 08:22:05 PM
// Module Name: array_multiplier_tb
// Project Name: array multiplier
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module array_multiplier_tb;


	reg [5:0] a;
	reg [5:0] b;


	wire [11:0] product;

	array_multiplier uut (
		.a(a),
		.b(b),
		.m(product)
	);

	initial begin
		a = 0;
		b = 0;

		#10;

        $display("%6b, %6b, %12b", a, b, product);
		a = 6'd5;
		b = 6'd4;
		#100;

		a = 6'd32;
		b = 6'd23;
		#100;
		$finish;
	end

endmodule
