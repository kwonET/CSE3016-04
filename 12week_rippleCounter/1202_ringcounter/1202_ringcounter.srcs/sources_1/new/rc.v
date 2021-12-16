`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 15:24:14
// Design Name: 
// Module Name: rc
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


module rc(clk,clr,Q);
    input clk,clr;
    output [3:0] Q;
    reg [3:0] Q=4'b0000;
    
    always @(posedge clk or posedge clr)
        begin 
        if(clr==1)
            Q<=1;
        else
            begin
            Q[3]<=Q[0];
            Q[2:0]<=Q[3:1];
            end
    end
endmodule
