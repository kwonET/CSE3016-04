`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/28 17:33:25
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



module seg7(output A,B,C,D,E,F,G,Dp,H, input In3,In2,In1,In0);
    assign A=(~In2&~In0)|(~In3&In1)|(In2&In1)|(In3&~In0)|(~In3&In2&In0)|(In3&~In2&~In1);
    assign B=(~In2&~In0)|(~In2&~In1)|(~In3&~In1&~In0)|(In3&~In1&In0)|(~In3&In1&In0);
    assign C=(In3&~In2)|(~In1&In0)|(~In2&~In1)|(~In3&In0)|(~In3&In2);
    assign D=(In3&In2&~In0)|(~In2&~In1&~In0)|(In2&~In1&In0)|(~In2&In1&In0)|(~In3&In1&~In0);
    assign E=(~In2&~In0)|(In3&In2)|(In1&~In0)|(In3&In1);
    assign F=(~In1&~In0)|(In3&~In2)|(In2&~In0)|(In3&In1)|(~In3&In2&~In1);
    assign G=(In3&~In2)|(In1&~In0)|(In3&In0)|(~In3&In2&~In1)|(~In2&In1);
    assign Dp=1;
    assign H=1;
endmodule
