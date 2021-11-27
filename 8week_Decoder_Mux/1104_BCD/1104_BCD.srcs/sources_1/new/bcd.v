`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 15:55:38
// Design Name: 
// Module Name: bcd
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

module bcd(output a,b,c,d,e,f,g,h,i, input A, B,C,D);
    assign a=~A&~B&~C&D;
    assign b=~A&~B&C&~D;
    assign c=~A&~B&C&D;
    assign d=~A&B&~C&~D;
    assign e=~A&B&~C&D;
    assign f=~A&B&C&~D;
    assign g=~A&B&C&D;
    assign h=A&~B&~C&~D;
    assign i=A&~B&~C&D;
endmodule

