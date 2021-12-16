`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/16 02:35:05
// Design Name: 
// Module Name: mealy_10101
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


module mealy_10101(clk,reset,in,out);
    input clk, reset;
    input in;
    output out;
    
    reg out;
    reg A,B,C,D,E;
    
    always @(posedge clk or posedge reset)
        begin 
        //reset이 1일 때 A로 state 변화
        if(reset)
            begin
            A=1'b1;
            out<=1'b0;          
            end  
            
        //state가 A
        else if(A==1'b1)
            begin
            if(in)
                begin
                B<=1'b1;
                A<=1'b0;
                out<=1'b0;
                end
            else
                begin
                A<=1'b1;
                out<=1'b0;
                end
            end
            
        //state가 B
        else if(B==1'b1)
            begin
            if(in)
                begin
                B<=1'b1;
                out<=1'b0;
                end
            else
                begin
                C<=1'b1;
                B<=1'b0;
                out<=1'b0;
                end
            end
            
        //state가 C
        else if(C==1'b1)
            begin
            if(in)
                begin
                D<=1'b1;
                C<=1'b0;
                out<=1'b0;
                end
            else
                begin
                A<=1'b1;
                C<=1'b0;
                out<=1'b0;
                end
            end
            
        //state가 D
        else if(D==1'b1)
            begin
            if(in)
                begin
                B<=1'b1;
                D<=1'b0;
                out<=1'b0;
                end
            else
                begin
                E<=1'b1;
                D<=1'b0;
                out<=1'b0;
                end
            end  
            
        //state가 E
        else if(E==1'b1)
            begin
            if(in)
                begin
                A<=1'b1;
                E<=1'b0;
                out<=1'b1;
                end
            else
                begin
                A<=1'b1;
                E<=1'b0;
                out<=1'b0;
                end
            end    
end                    
endmodule
