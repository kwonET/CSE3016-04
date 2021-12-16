`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 15:23:11
// Design Name: 
// Module Name: sr
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

module sr(D,clk,reset,Q);
    input clk,D,reset;
    output [3:0] Q;
    
    reg [3:0] Q=4'b0000;
    
    always @(posedge clk)
        begin 
        if(!reset)
            Q<=0;
        else if(D==1)
            Q[3]<=D;
            Q[2]<=Q[3];
            Q[1]<=Q[2];
            Q[0]<=Q[1];
            end
endmodule
