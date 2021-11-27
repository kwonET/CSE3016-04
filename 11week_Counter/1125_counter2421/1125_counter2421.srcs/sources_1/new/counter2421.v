`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/25 16:16:31
// Design Name: 
// Module Name: counter2421
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


module counter2421(clk,reset,c_out);
    input clk, reset;
    output [3:0] c_out;
    reg [3:0] c_out;
    reg [3:0] c_up=4'b00;
    
    always @(posedge clk)
        begin
            if(!reset||c_up>4'b1001) //4'b1111
                   begin
                   c_out<=0;
                   c_up<=4'b00;
                   end
            else
                begin
                   c_up<=c_up+4'b01;
                   c_out[0]<=c_up[0];
                   c_out[1]<=c_up[3]|(~c_up[2]&c_up[1])|(c_up[2]&~c_up[1]&c_up[0]);
                   c_out[2]<=c_up[3]|(c_up[2]&c_up[1])|(c_up[2]&~c_up[0]);
                   c_out[3]<=c_up[3]|(c_up[2]&c_up[1])|(c_up[2]&c_up[0]);
               end
        end 

endmodule