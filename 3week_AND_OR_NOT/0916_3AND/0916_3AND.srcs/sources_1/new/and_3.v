`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/09/16 15:20:21
// Design Name: 
// Module Name: and_3
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
module and_3(output E, input A, B, C, D);
    assign D = A&B;
    assign E = C&D;
endmodule

//module and_3(
//input A,B,C,
//output D 
//);
//    assign A = 1;
//    assign D = (A&B)&C;
//endmodule
