`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 15:31:53
// Design Name: 
// Module Name: sr_tb
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


module sr_tb;
reg clk,reset,D;
wire [3:0] Q;

sr v(
    .clk (clk),
    .reset (reset),
    .D (D),
    .Q (Q)
    );

initial begin
    reset = 4'b01; 
    D=1'b0;
end

always reset = #40 ~reset;
always D= #20 ~D;

initial begin
clk=0;
    forever begin
    #10 clk=~clk;
    end
    
    #1000
    $finish;
    
end
endmodule
