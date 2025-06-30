`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 12:04:54 PM
// Design Name: 
// Module Name: Mbledhesi_1bitesh
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


module Mbledhesi_1bitesh(
 input A,
    input B,
    input CIN,
    input SUM,
    output COUT
    );
    
    assign SUM=CIN^A^B;
    assign COUT= CIN & A | CIN & B |A & B ;
endmodule
