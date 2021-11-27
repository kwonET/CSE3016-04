`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:57:55
// Design Name: 
// Module Name: counter4d
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



module counter4d(clk,reset,c_out);
    input clk, reset;
    output [3:0] c_out;
    reg [3:0] c_up=4'b00;
    
    always @(posedge clk)
        begin
            if(!reset||c_up>4'b1001)
               c_up<=4'b00;
            else
               c_up<=c_up+4'b01;
        end 
        
    assign c_out=c_up;
endmodule