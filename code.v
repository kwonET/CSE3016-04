//----------------------10주차----------------------//
//10-1. 4bit binary full adder
`timescale 1ns / 1ps
module fulladder(A, B, Cin,S,Cout);
    output S,Cout;
    input A, B, Cin;
    assign S=Cin^(A^B);
    assign Cout=(A&B)|(Cin&(A^B));
endmodule
module adder_4bbp(S,Co,A,B,Ci);
    input [3:0] A;
    input [3:0] B;
    input Ci;
    output [3:0] S;
    output [3:0] Co;
    fulladder a1(A[0],B[0],Ci,S[0],Co[0]);
    fulladder a2(A[1],B[1],Co[0],S[1],Co[1]);
    fulladder a3(A[2],B[2],Co[1],S[2],Co[2]);
    fulladder a4(A[3],B[3],Co[2],S[3],Co[3]);
endmodule

//10-2. 4bit binary full subtractor 
`timescale 1ns / 1ps
module full_sub(An, Bn, Bn_1,bn, Dn);
    output bn, Dn;
    input An, Bn, Bn_1;
    assign Dn = Bn_1^(An^Bn);
    assign bn = (Bn_1&~(An^Bn))|(Bn&~An);
endmodule   
module sub_4bbp(A,B,bi,D,bo);
    input [3:0] A;
    input [3:0] B;
    input bi;
    output [3:0] D;
    output [3:0] bo;
    full_sub s1(A[0],B[0],bi,bo[0],D[0]);
    full_sub s2(A[1],B[1],bo[0],bo[1],D[1]);
    full_sub s3(A[2],B[2],bo[1],bo[2],D[2]);
    full_sub s4(A[3],B[3],bo[2],bo[3],D[3]);
endmodule

//10-3. bcd adder
`timescale 1ns / 1ps
module bcd_adder(A,B,sum, cout);
    input [3:0] A;
    input [3:0] B;
    output [3:0] sum;
    output [3:0] cout;
    wire carryOut;
    wire [3:0] w; //binarySum
    adder_4bbp rca0(a, b, 0, w, carryOut);
    assign cout = carryOut|(w[3]&w[2])|(w[3]&w[1]);
    adder_4bbp rca1(w, 4'b0110 & {4{cout[0]}}, 0, sum); 
    //두 번째 4-bit binary adder를 시행할 때 binary 값 0110을 c_out의 값을 4bit로 확장한 수와 AND 연산을 시켜 
    //c_out값이 1일 때에만 추가적인 연산이 의미가 있도록 구성했다.
endmodule

//10-4. full adder testbench file
`timescale 1ns / 1ps
module add4b_tb;
reg [3:0]A;
reg [3:0]B;
reg Ci;
wire [3:0]S;
wire [3:0]Co;
main m (
    .A (A),
    .B (B),
    .Ci (Ci),
    .Co (Co),
    .S (S));
initial begin
 A = 4'b1010; //10
 B = 4'b1001; //9
 Ci = 0;
end
always A = #100 A+4'd0010;
always B = #100 B+4'd0010;
always Ci = #50  ~Ci;
initial begin
    #1000
    $finish;
end
endmodule

//10-5. bcd adder testbench file
`timescale 1ns / 1ps
module bcdadd_tb; //A,B,Ci,S,Cout
reg [3:0]A;
reg [3:0]B;
wire [3:0]sum;
wire cout;
bcd_adder tb (
    .A (A),
    .B (B),
    .sum (sum),
    .cout (cout));
initial begin
 A = 4'b1010; //10
 B = 4'b1001; //9
//  Ci = 4'b0000;
end
always A = #100 A+4'b0010;
always B = #100 B+4'b0010;
// always Ci= #50  ~Ci;
initial begin
    #1000
    $finish;
end
endmodule

//----------------------11주차----------------------//
//11-1. RS FF
module rs_ff(R,S,CP,Q,NQ);
	    input R,S,CP;
	    output Q,NQ;
	    wire Q,NQ;
	    
	    //1) NOR로 구성
	    assign Q=~((R&CP)|NQ); //NOR
	    assign NQ=~((S&CP)|Q); //NOR

	    //2) NAND로 구성
	    assign Q=~((~(R&CP))&NQ); //NAND
	    assign NQ=~((~(S&CP))&Q); //NAND

	endmodule

//11-2. D FF 
module d_ff(D,CP,Q,NQ);
	    input D,CP;
	    output Q,NQ;
	    wire Q,NQ;
	    
	    assign Q= ~((~(D&CP))&NQ);
	    assign NQ= ~(~(CP&~D)&Q);

	endmodule

//11-3. RS FF tb
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
	    
	    #1000
	    $finish;
	end
	endmodule
    
//11-4. D FF
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
	    
	    #1000
	    $finish;
	end
	endmodule


//----------------------12주차----------------------//
//12-1. 2bit counter
`timescale 1ns / 1ps
module counter2(clk,reset,cout);
    input clk, reset;
    output [1:0] cout;
    reg [1:0] c_up=2'b00;
    always @(posedge clk)
        begin
            if(!reset)
               c_up<=2'b00;
            else
               c_up<=c_up+2'b01;
        end 
    assign cout=c_up;
endmodule

//12.2 4bit decade counter
`timescale 1ns / 1ps
module counter4d(clk,reset,c_out);
    input clk, reset;
    output [3:0] c_out;
    reg [3:0] c_up=4'b00;
    always @(posedge clk)
        begin
            if(!reset||c_up>4'b1001)
                c_up<=4'b00;
            else
                c_up<=c_up+4'b01;
        end 
    assign c_out=c_up;
endmodule

//12.3 4bit 2421 decade counter
`timescale 1ns / 1ps
module counter2421(clk,reset,c_out);
	    input clk, reset;
	    output [3:0] c_out;
	    reg [3:0] c_out;
	    reg [3:0] c_up=4'b00;
	    always @(posedge clk)
	        begin
	            if(!reset||c_up>4'b1001) //4'b1111
	                   begin
	                   c_out<=0;
	                   c_up<=4'b00;
	                   end
	            else
	                begin
	                   c_up<=c_up+4'b01;
	                   c_out[0]<=c_up[0];
	                   c_out[1]<=c_up[3]|(~c_up[2]&c_up[1])|(c_up[2]&~c_up[1]&c_up[0]);
	                   c_out[2]<=c_up[3]|(c_up[2]&c_up[1])|(c_up[2]&~c_up[0]);
	                   c_out[3]<=c_up[3]|(c_up[2]&c_up[1])|(c_up[2]&c_up[0]);
	               end
	        end 
	endmodule

//12.4 - 2bit counter testbench file
`timescale 1ns / 1ps
module counter2_tb;
	reg clk, reset;
	wire [1:0] cout;
	counter2 v (
	    .clk (clk),
	    .reset (reset),
	    .cout (cout)
	    );
	initial begin
	    reset = 2'b00; 
	end
	always reset = #100 ~reset;
	initial begin
	clk=0;
	    forever begin
	    #10 clk=~clk;
	end
	    #1000
	    $finish;
	end
endmodule

//12-5. 4 bit decade counter 
`timescale 1ns / 1ps
module counter4d_tb;
	reg clk, reset;
	wire [3:0] c_out;
	counter4d v (
	    .clk (clk),
	    .reset (reset),
	    .c_out (c_out)
	    );
	initial begin
	    reset = 4'b00; 
	end
	always reset = #400 ~reset;
	initial begin
	clk=0;
	    forever begin
	    #10 clk=~clk;
	end
	    #1000
	    $finish;
    end
endmodule

//---------------------13주차-----------------------//
//13-1. shift register
`timescale 1ns / 1ps
module sr(D,clk,reset,Q);
	    input clk,D,reset;
	    output [3:0] Q;
	    reg [3:0] Q=4'b0000;
	    always @(posedge clk)
	        begin 
	        if(!reset)
	            Q<=0;
	        else if(D==1)
	            Q[3]<=D;
	            Q[2]<=Q[3];
	            Q[1]<=Q[2];
	            Q[0]<=Q[1];
	            end
	endmodule

//13-2 ring counter
`timescale 1ps/1ps
module rc(clk,clr,Q);
	    input clk,clr;
	    output [3:0] Q;
	    reg [3:0] Q=4'b0000;
	    always @(posedge clk or posedge clr)
	        begin 
	        if(clr==1)
	            Q<=1;
	        else
	            begin
	            Q[3]<=Q[0];
	            Q[2:0]<=Q[3:1];
	            end
	    end
	endmodule

//13-3 up/down counter
module udc(clk,clr,Q,seg,up,a);
	    input clk,clr,up;
	    output [3:0] Q;
	    output [6:0] seg;
	    output a;
	    reg [6:0] seg=7'b1111111;
	    reg [3:0] Q=4'b0000;
	    assign a=1;
	    always @(posedge clk)
	        begin 
	        //clr==0
	        if(~clr)
	        begin 
	            Q<=0;
	            seg=7'b1111111;
	            end
	        //up case
	        else if(up)
	        begin 
	            seg=7'b0111110;
	            Q=Q+1;
	            end
	        //down case
	        else
	        begin
	        Q=Q-1;
	        seg=7'b0111101;
	        end
	    end
	endmodule

//13-4 shift register tb
`timescale 1ns / 1ps
module sr_tb;
	reg clk,reset,D;
	wire [3:0] Q;
	sr v(
	    .clk (clk),
	    .reset (reset),
	    .D (D),
	    .Q (Q)
	    );
	initial begin
	    reset = 4'b01; 
	    D=1'b0;
	end
	always reset = #40 ~reset;
	always D= #20 ~D;
	initial begin
	clk=0;
	    forever begin
	    #10 clk=~clk;
	    end
	    #1000
	    $finish;
	end
	endmodule

//13-5. ring counter tb
`timescale 1ps/1ps
	module rc_tb; 
	reg clk,clr;
	wire [3:0] Q;
	rc v(
	    .clk (clk),
	    .clr (clr),
	    .Q (Q)
	    );
	initial begin
	    clr = 4'b01; 
	end
	always clr = #150 ~clr;
	initial begin
	clk=0;
	    forever begin
	    #10 clk=~clk;
	    end
	    
	    #1000
	    $finish;
	end
	endmodule

//13-5. up/down counter tb
`timescale 1ps/1ps
module udc_tb; 
	reg clk,clr,up;
	wire [3:0] Q;
	wire [6:0] seg;
	wire a;
	udc v(
	    .clk (clk),
	    .clr (clr),
	    .Q (Q),
	    .seg (seg),
	    .up (up),
	    .a (a)
	    );
	initial begin
	    clr = 4'b01; 
	end
	always clr = #400 ~clr;
	initial begin
	up=1;
	clk=0;
	    forever begin
	    #5 clk=~clk;
	    #20 up=~up;
	    end
	    #1000
	    $finish;
	end
	endmodule


//---------14주차 --------------//
//14.1 1101 mealy
module mealy(clk,reset,in,out);
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
                C<=1'b1;
                B<=1'b0;
                out<=1'b0;
                end
            else
                begin
                A<=1'b1;
                B<=1'b0;
                out<=1'b0;
                end
            end
        //state가 C
        else if(C==1'b1)
            begin
            if(in)
                begin
                C<=1'b1;
                out<=1'b0;
                end
            else
                begin
                D<=1'b1;
                C<=1'b0;
                out<=1'b0;
                end
            end
        //state가 D
        else if(D==1'b1)
            begin
            if(in)
                begin
                E<=1'b1;
                D<=1'b0;
                out<=1'b1;
                end
            else
                begin
                A<=1'b1;
                D<=1'b0;
                out<=1'b0;
                end
            end  
        //state가 E
        else if(E==1'b1)
            begin
            if(in)
                begin
                C<=1'b1;
                E<=1'b0;
                out<=1'b0;
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
//14.2 1101 moore
module moore(clk,reset,in,out);
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
                end
            else
                begin
                A<=1'b1;
                end
            out<=1'b0;
            end
            
        //state가 B
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
            
        //state가 C
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
            
        //state가 D
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
            
        //state가 E
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

//14.3 10101 mealy
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

//14.4 10101 moore 
module moore_10101(clk,reset,in,out);
    input clk, reset;
    input in;
    output out;
    
    reg out;
    reg A,B,C,D,E,F;
    
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
                end
            else
                begin
                A<=1'b1;
                end
            out<=1'b0;
            end
            
        //state가 B
        else if(B==1'b1)
            begin
            if(in)
                begin
                B<=1'b1;
                end
            else
                begin
                C<=1'b1;
                B<=1'b0;
                end
            out<=1'b0;
            end
            
        //state가 C
        else if(C==1'b1)
            begin
            if(in)
                begin
                D<=1'b1;
                C<=1'b0;
                end
            else
                begin
                A<=1'b1;
                C<=1'b0;
                end
            out<=1'b0;
            end
            
        //state가 D
        else if(D==1'b1)
            begin
            if(in)
                begin
                B<=1'b1;
                D<=1'b0;
                end
            else
                begin
                E<=1'b1;
                D<=1'b0;
                end
            out<=1'b0;
            end  
            
        //state가 E
        else if(E==1'b1)
            begin
            if(in)
                begin
                F<=1'b1;
                E<=1'b0;
                end
            else
                begin
                A<=1'b1;
                E<=1'b0;
                end
            out<=1'b0;
            end    

        //state가 F
        else if(F==1'b1)
            begin
            if(in)
                begin
                B<=1'b1;
                F<=1'b0;
                end
            else
                begin
                E<=1'b1;
                F<=1'b0;
                end
            out<=1'b1;
            end    
end                    
endmodule

//14.5 1101 moore tb
module moore_tb; 
    reg clk,reset,in;
    wire out;
    
    moore v(
        .clk (clk),
        .reset (reset),
        .in (in),
        .out (out)
        );
    
    initial begin
        reset = 1'b1; 
        in=1'b1;
    end
    always reset = #200 ~reset;
    always in= #20 $urandom%2;
    
    initial begin
    clk=0;
        forever begin
        #10 clk=~clk;
        end
        
        #1000
        $finish;
        
    end
    endmodule
