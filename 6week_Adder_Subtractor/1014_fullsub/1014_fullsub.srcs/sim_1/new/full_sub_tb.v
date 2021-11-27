`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/14 15:39:13
// Design Name: 
// Module Name: full_sub_tb
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

module full_sub_tb;
reg An, Bn, Bn_1;
wire bn, Dn;

//(output bn, Dn, input An, Bn, Bn_1)
full_sub tb (
    .An (An),
    .Bn (Bn),
    .Bn_1 (Bn_1),
    .bn (bn),
    .Dn (Dn));

initial begin
 An = 1'b0;
 Bn = 1'b0;
 Bn_1 = 1'b0;
end

always An = #400 ~An;
always Bn = #200 ~Bn;
always Bn_1 = #100 ~Bn_1;

initial begin
    #1000
    $finish;
end

endmodule
