`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 16:01:25
// Design Name: 
// Module Name: 2bit_tb
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



module bit_tb;
reg A, B,C,D;
wire F1,F2,F3;


bit tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .F1 (F1),
    .F2 (F2),
    .F3 (F3));

initial begin
 A = 1'b0;
 B = 1'b0;
 C = 1'b0;
 D = 1'b0;
end

always A = #400 ~A;
always B = #200 ~B;
always C = #100 ~C;
always D = #50 ~D;

initial begin
    #1500
    $finish;
end

endmodule