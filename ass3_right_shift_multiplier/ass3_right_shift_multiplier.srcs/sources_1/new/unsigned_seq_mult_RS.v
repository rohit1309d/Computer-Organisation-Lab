`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Create Date: 09/24/2020 10:59:50 PM
// Module Name: unsigned_seq_mult_RS
// Project Name: right shift multiplier
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////

module unsigned_seq_mult_RS(input clock, input reset, input load, input [5:0] a, input [5:0] b, output reg [11:0] out);
    reg [2:0] c;
    reg [12:0] rshift;
    reg [11:0] y;
    always @(posedge clock or posedge reset)
    begin
        if(reset==1)
        begin
            y=b<<6; //initial left shifting to preserve the bits
            rshift = 0;
            out = 0;
            c=0;
        end
        else
        if(load)
        begin
             begin
                if(c!=6)
                begin
                    //given equation in the problem statement 
                    if(a[c])
                        rshift = out + y;
                    else
                        rshift = out;
                        
                    out = rshift >> 1;
                    c = c+1;
                end
            end
        end
    end
endmodule

