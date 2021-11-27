`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 17:57:58
// Design Name: 
// Module Name: seg7_tb
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 17:53:04
// Design Name: 
// Module Name: seg7
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

module seg7_tb;
reg In3,In2,In1,In0;
wire A,B,C,D,E,F,G,Dp, H;

//ouput A,B,C,D,E,F,G,Dp, input In3,In2,In1,In0

seg7 tb (
    .A (A),
    .B (B),
    .C (C),
    .D (D),
    .E (E),
    .F (F),
    .G (G),
    .H (H),
    .Dp (Dp),
    .In3 (In3),
    .In2 (In2),
    .In1 (In1),
    .In0 (In0));

initial begin
In0 = 1'b0;
In1 = 1'b0;
In2 = 1'b0;
In3 = 1'b0;

end


always In3 = #800 ~In3;
always In2 = #400 ~In2;
always In1 = #200 ~In1;
always In0 = #100 ~In0;

initial begin
    #1000
    $finish;
end

endmodule