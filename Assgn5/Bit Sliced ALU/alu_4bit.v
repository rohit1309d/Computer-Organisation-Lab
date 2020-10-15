`timescale 1ns / 1ps
//Assignment - 5
//Problem - 2(Source file)
//Semester - 5
//Group - 28
//Kantevari Pruthvi 18CS10024
//Dhaipule Rohit - 18CS10013



module alu_4bit(a,b,cin,m,s,cout,o);
    input [3:0] a;
    input [3:0] b;
    input [3:0] s;
    input m, cin;
    output cout;
    //output reg p, g;
    output [3:0] o;
    wire [3:0] o2;
    reg [3:0] o1;
    reg [3:0] A,B;
    integer i;
    reg cout1;
    wire cout2;
    carry_lookahead_adder cla1(A,B,cin,o2,cout2);
    assign o  = m == 1'b0 ? o2 : o1;
    assign cout = m == 1'b0 ? cout2 : cout1;
    always @(a,b,s,m)
        begin
            if(m)
              begin
                  for(i=0;i<4;i=i+1)
                    begin
                      o1[i]=(!a[i])&b[i]&(!s[0]) | (!a[i])&(!b[i])&(!s[1]) | (a[i])&(!b[i])&(s[2]) | (a[i])&(b[i])&(s[3]);
                      cout1 = 1'b0;
                      //p = 1'b0;
                      //g = 1'b0;
                    end
              end
            else
               begin
                case(s)
                    4'b0000:begin
                        A=a;
                        B=4'b0000;
                      end
                    4'b0001:begin
                        A=a|b;
                        B=4'b0000;
                      end
                    4'b0010:begin
                        A=a|(~b);
                        B=4'b0000;
                      end
                    4'b0011:begin
                        A=4'b1111;
                        B=4'b0000;
                      end
                    4'b0100:begin
                        A=a&(~b);
                        B=a;
                      end
                    4'b0101:begin
                        A=a|b;
                        B=a&(~b);
                      end
                    4'b0110:begin
                        A=a;
                        B=(~b);
                      end
                    4'b0111:begin
                        A=a&b;
                        B=4'b1111;
                      end
                    4'b1000:begin
                        A=a;
                        B=a&b;
                      end
                    4'b1001:begin
                        A=a;
                        B=b;
                      end
                    4'b1010:begin
                        A=a|b;
                        B=a&b;
                      end
                    4'b1011:begin
                        A=a&b;
                        B=4'b1111;
                      end
                    4'b1100:begin
                        A=a;
                        B=a;
                      end
                    4'b1101:begin
                        A=a|b;
                        B=a;
                      end
                    4'b1110:begin
                        A=a|(~b);
                        B=a;
                      end
                    4'b1111:begin
                        A=a;
                        B=4'b1111;
                      end
                endcase
                 
               end
        end     
    
endmodule