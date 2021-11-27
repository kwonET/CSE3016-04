`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/07 15:21:41
// Design Name: 
// Module Name: bool1_
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



module bool_tb;
reg A, B, C;
wire D;


bool1 tb (
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
