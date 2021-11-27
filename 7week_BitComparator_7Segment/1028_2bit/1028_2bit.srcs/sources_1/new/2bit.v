`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 15:29:57
// Design Name: 
// Module Name: 2bit
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



module bit(output F1,F2,F3, input A, B, C, D);
    assign F2 =(~A&~B&~C&~D)|(~A&B&~C&D)|(A&B&C&D)|(A&~B&C&~D); //same  ~(A^B)
    assign F1 =(A&~C)|(B&~C&~D)|(A&B&~D); //bigger A&~B;
    assign F3 =(~A&C)|(~A&~B&D)|(~B&C&D); //smaller ~A&B
endmodule
