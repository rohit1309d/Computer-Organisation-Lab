`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: carry_save_adder
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////


module carry_save_adder_tb;
     // Inputs
     reg [15:0] a;reg [15:0] b;reg [15:0] c;
     reg [15:0] d;reg [15:0] e;reg [15:0] f;
     reg [15:0] g;reg [15:0] h;reg [15:0] i;

     wire [19:0]Sum;
     wire Cout;

     carry_save_adder uut (a,b,c,d,e,f,g,h,i,Sum,Cout);

     initial
     begin
        a = 1;
        b = 10;
        c = 100;
        d = 1000;
        e = 10000;
        f = 2;
        g = 3;
        h = 4;
        i = 5;
        #300;
     end

endmodule
