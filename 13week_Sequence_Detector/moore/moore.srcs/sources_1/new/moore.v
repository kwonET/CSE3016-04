`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/15 23:41:07
// Design Name: 
// Module Name: moore
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


module moore(clk,reset,in,out);
    input clk, reset;
    input in;
    output out;
    
    reg out;
    reg A,B,C,D,E;
    
    always @(posedge clk or posedge reset)
        begin 
        //reset�� 1�� �� A�� state ��ȭ
        if(reset)
            begin
            A=1'b1;
            out<=1'b0;          
            end  
            
        //state�� A
        else if(A==1'b1)
            begin
            if(in)
                begin
                B<=1'b1;
                A<=1'b0;
                end
            else
                begin
                A<=1'b1;
                end
            out<=1'b0;
            end
            
        //state�� B
        else if(B==1'b1)
            begin
            if(in)
                begin
                C<=1'b1;
                B<=1'b0;
                end
            else
                begin
                A<=1'b1;
                B<=1'b0;
                end
            out<=1'b0;
            end
            
        //state�� C
        else if(C==1'b1)
            begin
            if(in)
                begin
                C<=1'b1;
                end
            else
                begin
                D<=1'b1;
                C<=1'b0;
                end
            out<=1'b0;
            end
            
        //state�� D
        else if(D==1'b1)
            begin
            if(in)
                begin
                E<=1'b1;
                D<=1'b0;
                end
            else
                begin
                A<=1'b1;
                D<=1'b0;
                end
            out<=1'b0;
            end  
            
        //state�� E
        else if(E==1'b1)
            begin
            if(in)
                begin
                C<=1'b1;
                E<=1'b0;
                end
            else
                begin
                A<=1'b1;
                E<=1'b0;
                end
            out<=1'b1;
            end    
end                    
endmodule
