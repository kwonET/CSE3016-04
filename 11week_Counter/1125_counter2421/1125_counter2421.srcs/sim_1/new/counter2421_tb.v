`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 16:24:12
// Design Name: 
// Module Name: counter2421_tb
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



module counter2421_tb;
reg clk, reset;
wire [3:0] c_out;

counter2421 v (
    .clk (clk),
    .reset (reset),
    .c_out (c_out)
    );

initial begin
    reset = 4'b00; 
end

always reset = #400 ~reset;
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
