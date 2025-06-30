`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 01:23:46 PM
// Design Name: 
// Module Name: Ripple_Carry_Adder
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

//Mbledhes 4 bitesh
module Ripple_Carry_Adder(
input [3:0] A,
input [3:0] B,
input CIN ,
output [3:0] S, 
output COUT
);
//PER 4 BIT 3 TELA I KATERTI DALES shiko ne kompjuterika.tk
wire bartja[2:0] ;

Mbledhesi_1bitesh M0(A[0] , B[0], CIN, S[0],bartja[0]);
Mbledhesi_1bitesh M1(A[1] , B[1], bartja[0], S[1],bartja[1]);
Mbledhesi_1bitesh M2(A[2] , B[2], bartja[1], S[2],bartja[2]);
Mbledhesi_1bitesh M3(A[3] , B[3], bartja[2], S[3],COUT);
endmodule
