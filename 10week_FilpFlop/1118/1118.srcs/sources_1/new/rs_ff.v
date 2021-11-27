`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 15:38:52
// Design Name: 
// Module Name: rs_ff
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

module rs_ff(R,S,CP,Q,NQ);
    input R,S,CP;
    output Q,NQ;
    wire Q,NQ;
    
//    always @ (posedge CP)
//    begin
    assign Q=~((R&CP)|NQ);
    assign NQ=~((S&CP)|Q);
//    end
endmodule

