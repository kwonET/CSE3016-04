`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 15:23:47
// Design Name: 
// Module Name: fulladder_tb
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


module fulladder_tb;
reg A, B, Cin;
wire S, Cout;


fulladder tb (
    .A (A),
    .B (B),
    .Cin (Cin),
    .Cout (Cout),
    .S (S));

initial begin
 A = 1'b0;
 B = 1'b0;
 Cin = 1'b0;
end

always A = #400 ~A;
always B = #200 ~B;
always Cin = #100 ~Cin;
initial begin
    #1000
    $finish;
end

endmodule
