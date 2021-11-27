`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 15:42:11
// Design Name: 
// Module Name: dec24_tb
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


module dec24_tb;
reg A,B;
wire D0,D1,D2,D3;


dec24 tb (
    .A (A),
    .B (B),
    .D0 (D0),
    .D1 (D1),
    .D2 (D2),
    .D3 (D3)   
    );

initial begin
 A = 1'b0;
 B = 1'b0;
end

always A = #400 ~A;
always B = #200 ~B;

initial begin
    #1500
    $finish;
end

endmodule