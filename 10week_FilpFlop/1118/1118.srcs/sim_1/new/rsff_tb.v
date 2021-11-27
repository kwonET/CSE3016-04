`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/11/18 15:56:57
// Design Name: 
// Module Name: rsff_tb
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


module rsff_tb;
reg R,S,CP;

rs_ff v (
    .R (R),
    .S (S),
    .CP (CP),
    .Q (Q),
    .NQ (NQ));

initial begin
    R = 2'b00; 
    S = 2'b00; 
    CP = 2'b00; 
end

always S = #100 ~S;
always R = #50  ~R;
always CP = #25  ~CP;
initial begin
//CP=0;
//    forever begin
//    #10 CP=~CP;
//    end
    
    #1000
    $finish;
end
endmodule

//    #1000
//    $finish;



