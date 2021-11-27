`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 16:15:32
// Design Name: 
// Module Name: deMux
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



module deMux(output A,B,C,D, input a,b,F);
    assign A = (F&~b&~a);
    assign B = (F&~b&a);
    assign C = (F&b&~a);
    assign D = (F&b&a);
endmodule
