`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 15:37:33
// Design Name: 
// Module Name: parity2_tb
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


module parity2_tb;
reg A, B, C, D, P;
wire E;


parity2 tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .P (P),
    .E (E));

initial begin
 A = 1'b0;
 B = 1'b0;
 C = 1'b0;
 D = 1'b0;
 P = 1'b0;
end

always A = #400 ~A;
always B = #200 ~B;
always C = #100 ~C;
always D = #50 ~D;
always P = #25 ~D;

initial begin
    #1000
    $finish;
end

endmodule
