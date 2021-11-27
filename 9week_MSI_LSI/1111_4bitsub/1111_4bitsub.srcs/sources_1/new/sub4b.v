`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:13:55
// Design Name: 
// Module Name: sub4b
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


module full_sub(An, Bn, Bn_1,bn, Dn);
    output bn, Dn;
    input An, Bn, Bn_1;
    assign Dn = Bn_1^(An^Bn);
    assign bn = (Bn_1&~(An^Bn))|(Bn&~An);
endmodule   

module main(A,B,bi,D,bo);
    input [3:0] A;
    input [3:0] B;
    input bi;
    output [3:0] D;
    output [3:0] bo;
    full_sub s1(A[0],B[0],bi,bo[0],D[0]);
    full_sub s2(A[1],B[1],bo[0],bo[1],D[1]);
    full_sub s3(A[2],B[2],bo[1],bo[2],D[2]);
    full_sub s4(A[3],B[3],bo[2],bo[3],D[3]);
endmodule
