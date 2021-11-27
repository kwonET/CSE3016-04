`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 15:52:04
// Design Name: 
// Module Name: en42_tb
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




module en42_tb;
reg A,B,C,D;
wire E0,E1;


en42 tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .E0 (E0),
    .E1 (E1)
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
