`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Assignment 3 verilog design of binary multipliers
// Create Date: 09/24/2020 08:21:18 PM
// Module Name: array_multiplier
// Project Name: array multiplier
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////



module array_multiplier(
    input [5:0] a,
    input [5:0] b,
    output reg [11:0] m
    );

	integer i;
	integer j;
	integer index;
	reg temp, temp_o, c_o;

	always @(*) begin
		m = 0;

		for(i=0;i<=5;i=i+1)
			begin
				c_o = 0;
				for(j=0;j<=5;j=j+1)
					begin
						temp = a[i]&b[j];
						index = (i+j);
						{c_o, temp_o} = m[index]+temp+c_o;
						m[index] = temp_o;
					end
				index = i+j;
				m[index] = c_o;
			end
		end
endmodule
