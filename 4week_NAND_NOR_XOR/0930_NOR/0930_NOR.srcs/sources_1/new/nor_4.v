`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/30 15:24:54
// Design Name: 
// Module Name: nor_4
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



module nor_4(output E, F, G, input A, B, C, D);
    assign E = ~(A|B);
    assign F = ~(E|C);
    assign G = ~(F|D);
endmodule
