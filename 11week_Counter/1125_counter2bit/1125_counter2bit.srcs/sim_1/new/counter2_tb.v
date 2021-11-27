`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:43:08
// Design Name: 
// Module Name: counter2_tb
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


module counter2_tb;
reg clk, reset;
wire [1:0] cout;

counter2 v (
    .clk (clk),
    .reset (reset),
    .cout (cout)
    );

initial begin
    reset = 2'b00; 
end

always reset = #100 ~reset;
//always R = #50  ~R;
//always CP = #25  ~CP;

initial begin
clk=0;
    forever begin
    #10 clk=~clk;
end
    
    #1000
    $finish;
    
end
endmodule



