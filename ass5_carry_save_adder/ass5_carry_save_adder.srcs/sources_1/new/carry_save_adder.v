`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2020 09:32:55 AM
// Design Name: 
// Module Name: carry_save_adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module carry_save_adder(a1,a2,a3,a4,a5,a6,a7,a8,a9,sum,cout);

    input [15:0] a1,a2,a3,a4,a5,a6,a7,a8,a9;
    output [19:0] sum;output cout;
    
    wire [19:0] x1,x2,x3,x4,x5,x6,x7,x8,x9;
    assign x1=a1;assign x4=a4;assign x7=a7;
    assign x2=a2;assign x5=a5;assign x8=a8;
    assign x3=a3;assign x6=a6;assign x9=a9;
    
    wire [19:0] sum1,carry1,sum2,carry2,sum3,carry3,sum4,carry4,sum5,carry5,sum6,carry6,sum7,carry7;
    
    csa c1(x1,x2,x3,sum1,carry1);
    csa c2(x4,x5,x6,sum2,carry2);
    csa c3(x7,x8,x9,sum3,carry3);
    csa c4(sum1,carry1,sum2,sum4,carry4);
    csa c5(carry2,sum3,carry3,sum5,carry5);
    csa c6(sum4,carry4,sum5,sum6,carry6);
    csa c7(sum6,carry6,carry5,sum7,carry7);
    carry_look_ahead_20_bit c8(sum7,carry7,0,sum,cout);
endmodule