`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Create Date: 09/24/2020 11:00:50 PM
// Module Name: unsigned_seq_mult_RS_tb
// Project Name: right shift multiplier
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module unsigned_seq_mult_RS_tb;

    reg [5:0] a,b;
    reg clock,reset,load;
    wire [11:0] product;
    
    
    unsigned_seq_mult_RS uut(.clock(clock),.reset(reset),.load(load),.a(a),.b(b),.out(product));
    
    initial
    begin
        clock=1;reset=1;a=35; b=26; load=1;   
        #15 reset=0;
        #200 $finish;
    end
    
    always #10 clock = ~clock;
endmodule

