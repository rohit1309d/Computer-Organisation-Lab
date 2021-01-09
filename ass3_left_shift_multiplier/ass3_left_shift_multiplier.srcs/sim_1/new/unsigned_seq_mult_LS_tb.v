`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Create Date: 09/24/2020 09:59:50 PM
// Module Name: unsigned_seq_mult_LS_tb
// Project Name: left shift multiplier
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////



module unsigned_seq_mult_LS_tb;
    
	reg [5:0] a,b;
    reg clock,reset,load;
    wire [11:0] product;
    
    unsigned_seq_mult_LS usml(.clock(clock),.reset(reset),.load(load),.a(a),.b(b),.product(product));
    
    initial
    begin
        clock=1;reset=1;a=25; b=25; load=1;   
        #15 reset=0;
        #200 $finish;
    end
    
    always #10 clock = ~clock;
    
endmodule
