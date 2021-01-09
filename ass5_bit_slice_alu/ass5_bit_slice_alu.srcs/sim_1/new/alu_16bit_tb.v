//Assignment - 5
//Problem - 2(Testbench)
//Semester - 5
//Group - 28
//Kantevari Pruthvi - 18CS10024
//Dhaipule Rohit -18CS10013


`timescale 1ns / 1ps
module alu_16bit_tb;
   reg [15:0] a;
   reg [15:0] b;
   reg cin;
   reg [3:0] s;
   reg m;
   wire cout, p, g;
   wire [15:0] f;
 alu_16bit a1(a,b,cin,m,s,cout,f, p, g);

  //inputs are taken in 2's complement form and printed in 2's complement form
  
   initial
     begin
     $display("Output for different selection inputs when m=0 and negated output is printed");
       a=16'b0000000000000010; b=16'b0000000000000001; cin = 1'b0; s=4'b0000; m=1'b0;
       $monitor("A=%b,B=%b,cin=%b,s=%b,F=%b,Cn+4=%b, p=%b, g=%b",a,b,cin,s,f,cout, p, g);
       #20 a=16'b0000000000000010; b=16'b0000000000000101; cin = 1'b1; s=4'b0001; m=1'b0;
       #20 a=16'b0000000000000010; b=16'b0000000000000011; cin = 1'b1; s=4'b0010; m=1'b0;
       #20 a=16'b0000000000000010; b=16'b0000000000000101; cin = 1'b0; s=4'b0011; m=1'b0;
       #20 a=16'b0000000000000010; b=16'b0000000000000101; cin = 1'b1; s=4'b0100; m=1'b0;
       #20 $display("Output for different selection inputs when m=1");
       a=16'b0000000000000010; b=16'b0000000000000001; cin = 1'b0; s=4'b0000; m=1'b1;
       #20 a=16'b0000000000000010; b=16'b0000000000000101; cin = 1'b0; s=4'b0100; m=1'b1;
   end
endmodule
