`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 15:33:21
// Design Name: 
// Module Name: add4b_tb
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

module add4b_tb;
reg [3:0]A;
reg [3:0]B;
reg Ci;
wire [3:0]S;
wire [3:0]Co;


main m (
    .A (A),
    .B (B),
    .Ci (Ci),
    .Co (Co),
    .S (S));

initial begin
 A = 4'b1010; //10
 B = 4'b1001; //9
 Ci = 0;
end

//initial
//begin 
//  A=4'd0; B=4'd0; Ci=1'b0;
//  #50 A=4'd3; B=4'd4;
//  #50 A=4'd2; B=4'd5;
//  #50 A=4'd9; B=4'd9;
//  #50 A=4'd10; B=4'd15;
//  #50 A=4'd10; B=4'd5; Ci=1'b1;
//end

always A = #100 A+4'd0010;
always B = #100 B+4'd0010;
always Ci = #50  Ci+4'd0010;
initial begin
    #1000
    $finish;
end

endmodule


