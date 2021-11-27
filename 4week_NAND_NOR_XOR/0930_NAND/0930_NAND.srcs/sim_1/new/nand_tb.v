`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/30 15:14:32
// Design Name: 
// Module Name: nand_tb
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


module nand_tb;
reg A, B, C,D;
wire G;


nand_4 tb (
    .G (G),
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .E (E),
    .F (F));

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
