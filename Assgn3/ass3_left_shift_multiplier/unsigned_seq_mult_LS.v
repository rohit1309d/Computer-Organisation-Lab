`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Assignment 3 verilog design of binary multipliers
// Create Date: 09/24/2020 09:59:50 PM
// Module Name: unsigned_seq_mult_LS
// Project Name: left shift multiplier
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module unsigned_seq_mult_LS(input clock, input reset, input load, input [5:0] a, input [5:0] b, output reg [11:0] product);
    reg [2:0] c;
    reg [11:0] lshift;
    always @(posedge clock or posedge reset)
    begin
        if(reset == 1)
        begin
            lshift = b;
            product = 0;
            c = 0;
        end
        else
        if(load)
        begin
             begin
                if(c!=6)
                begin
                    if(a[c])
                        product = product + lshift;
                    lshift = lshift << 1;
                    c = c+1;
                end
            end
        end
    end
endmodule
