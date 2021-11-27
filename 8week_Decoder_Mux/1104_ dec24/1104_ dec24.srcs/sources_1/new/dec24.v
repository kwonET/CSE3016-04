`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/04 15:40:42
// Design Name: 
// Module Name: dec24
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


module dec24(output D0,D1,D2,D3, input A, B);
    assign D0=~A&~B;
    assign D1=~A&B;
    assign D2=A&~B;
    assign D3=A&B;
endmodule

