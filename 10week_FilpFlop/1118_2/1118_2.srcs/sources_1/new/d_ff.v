`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 15:39:51
// Design Name: 
// Module Name: d_ff
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


module d_ff(D,CP,Q,NQ);
    input D,CP;
    output Q,NQ;
    wire Q,NQ;
    
    
    assign Q= ~((~(D&CP))&NQ);
    assign NQ= ~(~(CP&~D)&Q);
  
//    always @ (posedge CP)
//    begin

//    end
endmodule


