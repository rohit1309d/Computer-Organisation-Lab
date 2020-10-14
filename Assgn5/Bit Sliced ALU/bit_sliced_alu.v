`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Assignment 5
// Project Name: bit_sliced_alu
// Description: Group No 28
// Roll no - 18CS10013, 18CS10024
//////////////////////////////////////////////////////////////////////////////////



module bit_sliced_alu(S, A, B, M, Cn, F, Cn16);
    input [15:0] A, B;
    input [3:0]S;
    input Cn, M;
    output [15:0] F;
    output Cn16;
    wire  [2:0]C;
    alu f1(S,A[3:0],B[3:0],M,Cn,F[3:0],C[0]);
    alu f2(S,A[7:4],B[7:4],M,C[0],F[7:4],C[1]);
    alu f3(S,A[11:8],B[11:8],M,C[1],F[11:8],C[2]);
    alu f4(S,A[15:12],B[15:12],M,C[2],F[15:12],Cn16);
endmodule
