`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2023 11:51:31 AM
// Design Name: 
// Module Name: DataMemoryTest
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


module DataMemoryTest(  );
reg Clock , MemWrite, MemRead;
reg [23:0] Adresa;
reg [23:0] WriteData;
wire [23:0] ReadData;

initial 
begin

#0Clock= 1'b0;
#5 MemWrite=1'b1 ; Adresa=24'd2; WriteData=24'h70; MemRead=1'b0;
#5 Clock=1'b1;
#5 Clock=1'b0; MemWrite=1'b0;
#5 MemRead=1'b1; Adresa=24'd2; 
#5 $stop;
end

DataMemory DM(Adresa,WriteData,MemWrite,MemRead,Clock,ReadData);

  
endmodule
