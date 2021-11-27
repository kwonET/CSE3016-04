`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:34:13
// Design Name: 
// Module Name: bcdadd
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

module halfadder(A, B, S, C);
    output S,C;
    input A,B;
    assign S=A^B;
    assign C=A&B;
endmodule

module main(A,B,Ci,S,Cout);
    input [3:0] A;
    input [3:0] B;
    input Ci;
    wire [3:0]w; //full adder Sum1~4
    wire C0,C1,C2,C3,C4,C5,C6,C7;// full adder carry
    output [3:0] S;
    output Cout;
    
    fulladder a1(A[0],B[0],Ci,w[0],C0);
    fulladder a2(A[1],B[1],C0,w[1],C1);
    fulladder a3(A[2],B[2],C1,w[2],C2);
    fulladder a4(A[3],B[3],C2,w[3],C3);
    assign Cout = C3|(w[3]&w[2])|(w[3]&w[1]);
    
    fulladder a5(0,w[0],0,S[0],C4);
    fulladder a6(Cout,w[1],C4,S[1],C5);
    fulladder a7(Cout,w[2],C5,S[2],C6);
    fulladder a8(0,w[3],C6,S[3],C7);
    
//    assign y = C3|(w[3]&(w[2]|w[1]));
//    assign S[0]=w[0];
//    halfadder a5(w[1],y,S[1],C4);
//    fulladder a6(w[2],y,C4,S[2],C5);
   
//    halfadder a7(w[3],C5,S[3],Cout);
endmodule
