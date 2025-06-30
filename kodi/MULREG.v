`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 01:30:42 PM
// Design Name: 
// Module Name: MULREG
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

module MULREG(
    input [3:0] Clock,
    input [23:0] A,
    input [23:0] B,
    output reg [47:0] Result);
    wire[47:0] product; //Shumezuesi i A*B
 
always @(posedge Clock)
 begin
Result <= product; 
 end 
   
endmodule
