`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 15:33:18
// Design Name: 
// Module Name: parity1_tb
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



module parity1_tb;
reg A, B, C, D;
wire E;


parity1 tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .E (E));

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
    #1000
    $finish;
end

endmodule
