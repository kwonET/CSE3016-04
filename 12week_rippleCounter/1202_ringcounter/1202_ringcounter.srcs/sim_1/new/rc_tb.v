`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 16:07:37
// Design Name: 
// Module Name: rc_tb
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



module rc_tb; //    input clk,clr; output [3:0] Q;
reg clk,clr;
wire [3:0] Q;

rc v(
    .clk (clk),
    .clr (clr),
    .Q (Q)
    );

initial begin
    clr = 4'b01; 
end

always clr = #150 ~clr;

initial begin
clk=0;
    forever begin
    #10 clk=~clk;
    end
    
    #1000
    $finish;
    
end
endmodule
