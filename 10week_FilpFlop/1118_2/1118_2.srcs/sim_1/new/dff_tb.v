`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 16:17:15
// Design Name: 
// Module Name: dff_tb
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



module dff_tb;
reg D,CP;

d_ff v (
    .D (D),
    .CP (CP),
    .Q (Q),
    .NQ (NQ));

initial begin
    D = 2'b00; 
    CP = 2'b00;
end

always D = #100 ~D;
always CP = #50  ~CP;

initial begin
//CP=0;
//    forever begin
//    #10 CP=~CP;
//    end
    
    #1000
    $finish;
end
endmodule
