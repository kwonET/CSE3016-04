`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/02 15:26:19
// Design Name: 
// Module Name: udc
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


module udc(clk,clr,Q,seg,up,a);
    input clk,clr,up;
    output [3:0] Q;
    output [6:0] seg;
    output a;
        
    reg [6:0] seg=7'b1111111;
    reg [3:0] Q=4'b0000;
    
    assign a=1;
    
    always @(posedge clk)
        begin 
        //clr==0
        if(~clr)
        begin 
            Q<=0;
            seg=7'b1111111;
            end
        //up case
        else if(up)
        begin 
            seg=7'b0111110;
            Q=Q+1;
            end
        //down case
        else
        begin
        Q=Q-1;
        seg=7'b0111101;
        end
    end

endmodule
