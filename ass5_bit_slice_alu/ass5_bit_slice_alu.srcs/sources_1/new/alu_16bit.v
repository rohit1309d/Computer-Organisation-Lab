//Assignment - 5
//Problem - 2(Source file)
//Semester - 5
//Group - 28
//Kantevari Pruthvi 18CS10024
//Dhaipule Rohit - 18CS10013

//following texas instruments data sheet
module alu_16bit(a,b,cin,m,s,cout,o, p, g);
    input [15:0] a;
    input [15:0] b;
    input [3:0] s;
    input cin,m;
    output [15:0] o;
    output cout, p, g;
    
    wire c1,c2,c3;
  wire[3:0] pp, gg;
  alu_4bit a1(a[3:0],b[3:0],cin,m,s,c1,o[3:0], pp[0], gg[0]);
  alu_4bit a2(a[7:4],b[7:4],c1,m,s,c2,o[7:4], pp[1], gg[1]);
  alu_4bit a3(a[11:8],b[11:8],c2,m,s,c3,o[11:8], pp[2], gg[2]);
  alu_4bit a4(a[15:12],b[15:12],c3,m,s,cout,o[15:12], pp[3],gg[3]);
  assign p = pp[0]&pp[1]&pp[2]&pp[3];
  assign g = gg[3]|(pp[3]&gg[2])|(pp[3]&pp[2]&gg[1])|(pp[3]&pp[2]&pp[1]&gg[0]);	
endmodule
