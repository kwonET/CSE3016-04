`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 16:10:44
// Design Name: 
// Module Name: mux41_tb
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



module mux41_tb;
reg A,B,C,D,a,b;
wire  O;


mux41 tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .a (a),
    .b (b),
    .O (O)
    );

initial begin
 A = 1'b0;
 B = 1'b0;
 C = 1'b0;
 D = 1'b0;
 a = 1'b0;
 b = 1'b0;
end

always A = #800 ~A;
always B = #400 ~B;
always C = #200 ~C;
always D = #100 ~D;
always a = #50 ~a;
always b = #25 ~b;

initial begin
    #1500
    $finish;
end

endmodule

