`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 17:53:04
// Design Name: 
// Module Name: seg7
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

module seg7;
reg In3,In2,In1,In0;
wire A,B,C,D,E,F,G,Dp;

//ouput A,B,C,D,E,F,G,Dp, input In3,In2,In1,In0

seg7 tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .P (P),
    .E (E),
    .F (F),
    .G (G),
    .Dp (Dp),
    .In3 (In3),
    .In2 (In2),
    .In1 (In1),
    .In0 (In0));

initial begin
 A = 1'b0;
 B = 1'b0;
 C = 1'b0;
 D = 1'b0;
 E = 1'b0;
 F = 1'b0;
 G = 1'b0;
 Dp = 1'b0;
end

always A = #3200 ~A;
always B = #1600 ~B;
always C = #800 ~C;
always D = #400 ~D;
always E = #200 ~E;
always F = #100 ~F;
always G = #50 ~G;

initial begin
    #1000
    $finish;
end

endmodule