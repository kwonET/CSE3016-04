`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 16:03:42
// Design Name: 
// Module Name: bcd_tb
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



module bcd_tb;
reg A,B,C,D;
wire  a,b,c,d,e,f,g,h,i;


bcd tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .a (a),
    .b (b),
    .c (c),
    .d (d),
    .e (e),
    .f (f),
    .g (g),
    .h (h),
    .i (i)
    );

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
