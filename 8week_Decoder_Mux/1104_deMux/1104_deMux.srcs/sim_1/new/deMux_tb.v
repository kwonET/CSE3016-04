`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 16:17:37
// Design Name: 
// Module Name: deMux_tb
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



module deMux_tb;
reg a,b,F;
wire  A,B,C,D;


deMux tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .a (a),
    .b (b),
    .F (F)
    );

initial begin
 a = 1'b0;
 b = 1'b0;
 F = 1'b0;
end


always a = #400 ~a;
always b = #200 ~b;
always F = #100 ~F;


initial begin
    #1500
    $finish;
end

endmodule

