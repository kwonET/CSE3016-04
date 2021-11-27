`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/07 15:41:21
// Design Name: 
// Module Name: bit1
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


module bit1(output C,D,E,F, input A, B);
    assign C = ~(A^B); //same
    assign D = A^B; //not same
    assign E = A&~B; //bigger
    assign F = ~A&B; //smaller
endmodule