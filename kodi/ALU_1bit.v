`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 12:05:57 PM
// Design Name: 
// Module Name: ALU_1bit
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


module ALU_1bit(

    input A,
    input B,
    input Less,
    input CIN,
    input Binvert,
    input [1:0] Operation,
    output Result,
    output COUT
    );
    
    wire  JoB,mB,Dhe,Ose,Mbledhesi,XOR,Sll,Slt,mul;
    
    assign JoB=~B;
    
    Mux_2ne1 muxB (B,JoB,Binvert,mB);
    assign Dhe= mA & mB;
    assign Ose= mA | mB;
   //Mbledhesi_1bitesh Adder (mA,mB,CIN,Mbledhesi,COUT);
    Ripple_Carry_Adder  Adder(mA,mB,CIN,Mbledhesi,COUT);
    //Mux_4ne1 muxALU(Dhe,Ose,Mbledhesi,Less,Operation , Result);
    assign XOR= A^mB;
    assign Sll=A;
    assign Slt=A<mB ? 1:0;
    assign mul= A*mB;
    Mux_8ne1 muxALU1( Dhe,Ose,Mbledhesi,XOR,Sll,Slt,mul,Less,Operation,Result);
    
    
endmodule
