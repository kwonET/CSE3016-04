`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 15:38:29
// Design Name: 
// Module Name: counter2
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


module counter2(clk,reset,cout);
    input clk, reset;
    output [1:0] cout;
    reg [1:0] c_up=2'b00;
    
    always @(posedge clk)
        begin
            if(!reset)
               c_up<=2'b00;
            else
               c_up<=c_up+2'b01;
        end 
        
    assign cout=c_up;
endmodule
