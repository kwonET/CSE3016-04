`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 15:31:47
// Design Name: 
// Module Name: half_sub_tb
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


module half_sub_tb;
reg A, B;
wire D, b;


half_sub tb (
    .A (A),
    .B (B),
    .b (b),
    .D (D));

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