`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 15:51:04
// Design Name: 
// Module Name: codeconv
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



module codeconv(output y3,y2,y1,y0, input A, B, C, D);
    assign y3= ~((~B|~C)&(~B|~D)&(~A|C));
    assign y2= ~((~A|C)&(~B|~C)&(~B|~D));
    assign y1= ~((A|B|~C)&(~B|C|~D)&(~A|C));
    assign y0= ~((C|~D)&(~C|D));
endmodule

