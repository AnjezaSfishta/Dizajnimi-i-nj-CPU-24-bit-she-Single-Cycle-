`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 12:52:19 PM
// Design Name: 
// Module Name: ControlUnit
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


module ControlUnit(
    input [3:0] OPCODE,
    output reg RegDst,
    output reg MemToReg,
    output reg MemWrite, 
    output reg Branch,
    output reg MemRead,
    output reg [1:0] ALUOp,
    output reg ALUSrc,
    output reg RegWrite
    );
    always @(OPCODE) 
    begin
    case(OPCODE)
    4'b0110:// AND   OR  ADD  SUB  SLT  MUL  XOR   SLL
     begin
      assign RegDst=1'b1;
      assign MemToReg=1'b0;
      assign MemWrite=1'b0;
      assign Branch=1'b0;
      assign MemRead=1'b0;
      assign ALUOp=2'b10;
      assign ALUSrc=1'b0;
      assign RegWrite=1'b1;

     end
   
      4'b0001://ADDI
     begin
      assign RegDst=1'b0;
      assign MemToReg=1'b0;
      assign MemWrite=1'b0;
      assign Branch=1'b0;
      assign MemRead=1'b0;
      assign ALUOp=2'b00;
      assign ALUSrc=1'b1;
      assign RegWrite=1'b1;
      end
      4'b0010://LS
     begin
      assign RegDst=1'b0;
      assign MemToReg=1'b1;
      assign MemWrite=1'b0;
      assign Branch=1'b0;
      assign MemRead=1'b1;
      assign ALUOp=2'b00;
      assign ALUSrc=1'b1;
      assign RegWrite=1'b1;
      end
      4'b0011://SS
     begin
      assign RegDst=1'bX;
      assign MemToReg=1'b0;
      assign MemWrite=1'b1;
      assign Branch=1'b0;
      assign MemRead=1'b0;
      assign ALUOp=2'b00;
      assign ALUSrc=1'b1;
      assign RegWrite=1'bX;
      end
      4'b0100://BEQ / BNE
     begin
      assign RegDst=1'b0;
      assign MemToReg=1'b0;
      assign MemWrite=1'b0;
      assign Branch=1'b1;
      assign MemRead=1'b0;
      assign ALUOp=2'b01;
      assign ALUSrc=1'b0;
      assign RegWrite=1'b0;
      end
     
   endcase
   end
endmodule
