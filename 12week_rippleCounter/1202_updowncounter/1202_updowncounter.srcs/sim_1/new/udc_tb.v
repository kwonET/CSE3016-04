`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 16:24:44
// Design Name: 
// Module Name: udc_tb
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




module udc_tb; //        input clk,clr,up; output [3:0] Q; output x; output [6:0] seg;
reg clk,clr,up;
wire [3:0] Q;
wire [6:0] seg;
wire a;

udc v(
    .clk (clk),
    .clr (clr),
    .Q (Q),
    .seg (seg),
    .up (up),
    .a (a)
    );


initial begin
    clr = 4'b01; 
end

always clr = #400 ~clr;

initial begin
up=1;
clk=0;
    forever begin
    #5 clk=~clk;
    #20 up=~up;
    end
    
    #1000
    $finish;
end

endmodule

