`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/16 16:34:55
// Design Name: 
// Module Name: or_3_tb
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

module or_3_tb;
reg A, B, C;
wire E;


or_3 tb (
    .E (E),
    .A (A),
    .B (B),
    .C (C),
    .D (D));

initial begin
 A = 1'b0;
 B = 1'b0;
 C = 1'b0;
end

always A = #400 ~A;
always B = #200 ~B;
always C = #100 ~C;

initial begin
    #1000
    $finish;
end
endmodule