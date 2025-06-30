`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/07/2023 03:14:01 PM
// Design Name: 
// Module Name: ALUControl
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
module ALUControl(
input [1:0] ALUOp,
input [3:0] Funct,
output reg [3:0] ALUCtrl
 );
 always @ (ALUOp)
 begin
 case(ALUOp)
  2'b00:
    ALUCtrl=4'b0010;  //LW,SW (mbledhje)
  2'b01:
  begin
    ALUCtrl=4'b0110;  //BNE
  end
  2'b10:    // R format 
  case(Funct)
    4'b0000:
    begin 
    ALUCtrl= 4'b0000;   //AND
    end        
    4'b0001:
    begin
    ALUCtrl= 4'b0001;   //OR
    end      
    4'b0010:
    begin
    ALUCtrl=  4'b0010;       //ADD 
    end
    4'b0011:
    begin
    ALUCtrl=  4'b1010;      //SUB
    end
    4'b0100:
    begin
    ALUCtrl=  4'b0011;       //SLT
    end
    4'b0101:
    begin
    ALUCtrl=  4'b0100;     //MUL
    end
    4'b0110:
    begin
    ALUCtrl=  4'b0101;       //XOR
    end
    4'b0111:
    begin
    ALUCtrl=  4'b0110 ;      //SLL
    end
    endcase 
   endcase 
    end 
endmodule
