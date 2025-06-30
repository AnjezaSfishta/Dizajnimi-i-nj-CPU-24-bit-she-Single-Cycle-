`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 01:51:59 PM
// Design Name: 
// Module Name: InstructionMemory
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


module InstructionMemory(
   input [23:0] PC,
   output [23:0] Instruction
   );
reg [7:0] iMem[127:0];
initial $readmemb("InstructionMemory.mem",iMem);
assign Instruction={iMem[PC],iMem[PC+1],iMem[PC+2]};
endmodule 
