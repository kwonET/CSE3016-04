`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/11 17:00:14
// Design Name: 
// Module Name: bcdadd_tb
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

module bcdadd_tb; //A,B,Ci,S,Cout
reg [3:0]A;
reg [3:0]B;
reg Ci;
wire [3:0]S;
wire Cout;

main m (
    .A (A),
    .B (B),
    .Ci (Ci),
    .S (S),
    .Cout (Cout));

initial begin
 A = 4'b1010; //10
 B = 4'b1001; //9
 Ci = 4'b0000;
end

always A = #100 A+4'b0010;
always B = #100 B+4'b0010;
always Ci= #50  ~Ci;

initial begin
    #1000
    $finish;
end

endmodule


