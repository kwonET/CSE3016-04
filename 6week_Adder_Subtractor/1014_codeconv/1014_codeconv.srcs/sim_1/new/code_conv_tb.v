`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 16:23:57
// Design Name: 
// Module Name: code_conv_tb
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


module code_conv_tb;
reg A, B, C, D;
wire y3, y2, y1, y0;

codeconv tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .y3 (y3),
    .y2 (y2),
    .y1 (y1),
    .y0 (y0));

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