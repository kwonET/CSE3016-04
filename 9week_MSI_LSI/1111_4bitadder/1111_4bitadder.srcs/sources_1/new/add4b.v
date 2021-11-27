`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 15:26:25
// Design Name: 
// Module Name: add4b
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


module fulladder(A, B, Cin,S,Cout);
    output S,Cout;
    input A, B, Cin;
    assign S=Cin^(A^B);
    assign Cout=(A&B)|(Cin&(A^B));
endmodule

module main(S,Co,A,B,Ci);
    input [3:0] A;
    input [3:0] B;
    input Ci;
    output [3:0] S;
    output [3:0] Co;
    fulladder a1(A[0],B[0],Ci,S[0],Co[0]);
    fulladder a2(A[1],B[1],Co[0],S[1],Co[1]);
    fulladder a3(A[2],B[2],Co[1],S[2],Co[2]);
    fulladder a4(A[3],B[3],Co[2],S[3],Co[3]);
endmodule
