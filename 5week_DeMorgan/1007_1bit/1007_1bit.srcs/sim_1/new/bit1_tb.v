`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/07 15:44:48
// Design Name: 
// Module Name: bit1_tb
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



module bit1_tb;
reg A, B;
wire C,D,E,F;


bit1 tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .E (E),
    .F (F));

initial begin
 A = 1'b0;
 B = 1'b0;
end

always A = #400 ~A;
always B = #200 ~B;

initial begin
    #1000
    $finish;
end

endmodule