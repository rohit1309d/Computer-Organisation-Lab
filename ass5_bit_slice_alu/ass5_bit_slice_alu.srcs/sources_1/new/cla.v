`timescale 1ns / 1ps
//Assignment - 5
//Problem - 2(Source file)
//Semester - 5
//Group - 28
//Kantevari Pruthvi 18CS10024
//Dhaipule Rohit - 18CS10013


module carry_lookahead_adder(input[3:0] x, input[3:0] y, input cin, output[3:0] sum, output cout, output p, output g);  
    wire p0, p1, p2, p3, g0, g1, g2, g3, c1, c2, c3;
    assign g0 = x[0]&y[0], g1 = x[1]&y[1], g2 = x[2]&y[2], g3 = x[3]&y[3];
    assign p0 = x[0]^y[0], p1 = x[1]^y[1], p2 = x[2]^y[2], p3 = x[3]^y[3];
    assign sum[0] = p0^cin;
    assign c1 = g0|(p0&cin);
    assign sum[1] = p1^c1;
    assign c2 = g1|(p1&g0)|(p1&p0&cin);
    assign sum[2] = p2^c2;
    assign c3 = g2|(p2&g1)|(p2&p1&g0)|(p2&p1&p0&cin);
    assign sum[3] = p3^c3;
    assign cout = g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);

  assign p = p0&p1&p2&p3;
  assign g = g3|(p3&g2)|(p3&p2&g1)|(p3&p2&p1&g0);

endmodule
