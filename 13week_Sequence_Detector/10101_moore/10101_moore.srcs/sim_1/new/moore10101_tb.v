`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/16 02:24:20
// Design Name: 
// Module Name: moore10101_tb
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



module moore10101_tb; //    input clk, in, reset; output out;
reg clk,reset,in;
wire out;

moore_10101 v(
    .clk (clk),
    .reset (reset),
    .in (in),
    .out (out)
    );

initial begin
    reset = 1'b1; 
    in=1'b1;
end
always reset = #200 ~reset;
always in= #20 $urandom%2;

initial begin
clk=0;
    forever begin
    #10 clk=~clk;
    end
    
    #1600
    $finish;
    
end
endmodule
