`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/16 16:04:38
// Design Name: 
// Module Name: and_3_tb
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

module and_3_tb;
reg A, B, C;
wire E;

and_3 tb (
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

//    A = 0; B = 0; C = 0;
// #1 A = 0; B = 0; C = 1;
// #1 A = 0; B = 1; C = 0;
// #1 A = 0; B = 1; C = 1;
// #1 A = 1; B = 0; C = 0;
// #1 A = 1; B = 0; C = 1;
// #1 A = 1; B = 1; C = 0;
// #1 A = 1; B = 1; C = 0;

initial begin
    #1000
    $finish;
end
endmodule