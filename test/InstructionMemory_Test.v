`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/06/2023 05:10:09 PM
// Design Name: 
// Module Name: InstructionMemory_Test
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


module InstructionMemory_Test();
reg[23:0] PC;
wire[23:0] Instruction;
initial
begin
#0 PC=24'd7; 
end



InstructionMemory IM(PC,Instruction);

endmodule
