`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 01:30:15 PM
// Design Name: 
// Module Name: DataPath
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


module DataPath(
   input Clock,
   input [23:0] PC,
    input  RegDst,
    input  Branch,
    input MemRead,
    input MemWrite,
    input  MemToReg,
    input  ALUSrc,
    input  RegWrite,
    input [1:0] ALUOp,
    input [23:0] Instruction,
    input [23:0] numri,
    output BeqPC
    
    
    
    
    );
    wire [3:0] OPCODE;
    wire[3:0] RS;
    wire [3:0] RT;
    wire [3:0] RD;
    wire[3:0] Funct;
    wire[11:0] Immediate;
    wire[23:0] Immediate24;
    wire[23:0] ImmediatePlusPC;
    wire [3:0] percaktoDestinacionin;
    wire [23:0] percaktoHyrjenB;
    wire[23:0] ALUOut;
    wire[23:0] DMOut;
    wire[23:0] WriteDataToRegister;
    wire Zero, Overflow,CarryOut;
    wire[3:0]  ALUControlOut;
    wire[23:0] ReadRS;
    wire[23:0] ReadRT;
    wire[23:0] Numri;
     
    
     
     
   assign OPCODE= Instruction[23:20];
   assign RS=Instruction[19:16];
   assign RT=Instruction[15:12];
   assign RD=Instruction[11:8];
   assign Funct= Instruction[4:0];
   assign Immediate= Instruction[11:0];
   
   
   Mux_2ne1 mDestinacion(RegDst, RT,RD,percaktoDestinacionin);
   Mux_2ne1 mDalja(MemToReg, ALUOut,DMOut,WriteDataToRegister);
   
    
    
   RegisterFile RF(RS,RT,percaktoDestinacionin,WriteDataToRegister,ReadRS,ReadRT,RegWrite,Clock);
   
   assign Immediate24= {{ 12{Immediate[11]}}, Immediate[11:0]}; //per me ru shenjen 
   
    Mux_2ne1  mALU(ALUSrc,ReadRT,Immediate24,percaktoHyrjenB);
   
    ALUControl AC(ALUOp,Funct,ALUControlOut);
   
    ALU_24biteshe ALU24(ReadRS, percaktoHyrjenB, ALUControlOut[1:0],ALUControlOut[2],Zero,Overflow,CarryOut,ALUOut);
    
    DataMemory DM(ALUOut , ReadRT, Clock,MemWrite,MemRead, DMOut);
   
    
    
    VleraImmediate VF (numri, PC+3,PC-3);
   
    assign PC=PC+24'd3;
   // assign Immediate = VleraImmediate(Numri,PC+3,PC-3);
    assign ImmediatePlusPC = Immediate + PC;
    assign BeqPC = (Branch & Zero) ? ImmediatePlusPC :PC;
    
    

endmodule
