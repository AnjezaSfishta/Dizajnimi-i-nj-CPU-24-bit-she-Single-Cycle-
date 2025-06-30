`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 04:14:04 PM
// Design Name: 
// Module Name: CPU
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


module CPU( input Clock);
reg[23:0] PCPlus3;
reg [23:0] PC;
reg [23:0] PC_BEQ;
wire[23:0] Instruction;
wire[23:0] BeqPC;

initial 
begin 
assign PC=BeqPC;
end

always @(posedge Clock)
assign PC=PC+23'd4;
begin
end



InstructionMemory(PC,Instruction);
// Inicializimi i DataPath
DataPath DP(Clock, PC, RegDst , Branch, MemRead, MemWrite, MemToReg , ALUSrc , RegWrite, ALUOp, Instruction, BeqPC);
    
// Inicializimi i Control Unit    
ControlUnit CU(Instruction[23:20],RegDst,Branch , MemRead, MemWrite,MemToReg,ALUSrc, RegWrite,ALUOp); 



endmodule
