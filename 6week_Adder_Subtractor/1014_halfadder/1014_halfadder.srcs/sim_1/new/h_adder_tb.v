`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 15:13:58
// Design Name: 
// Module Name: h_adder_tb
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


module h_adder_tb;
reg A, B;
wire S, C;


h_adder tb (
    .A (A),
    .B (B),
    .C (C),
    .S (S));

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