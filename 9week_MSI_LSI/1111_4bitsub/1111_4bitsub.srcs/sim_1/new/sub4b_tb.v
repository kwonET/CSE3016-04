`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 16:19:27
// Design Name: 
// Module Name: sub4b_tb
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

module sub4b_tb;
reg [3:0]A;
reg [3:0]B;
reg bi;
wire [3:0]D;
wire [3:0]bo;


main m (
    .A (A),
    .B (B),
    .bi (bi),
    .bo (bo),
    .D (D));

initial begin
 A = 4'b1010; //10
 B = 4'b1001; //9
 bi = 0;
end

always A = #100 A+4'd0010;
always B = #100 B+4'd0010;
always bi = #50  ~bi;
initial begin
    #1000
    $finish;
end

endmodule

