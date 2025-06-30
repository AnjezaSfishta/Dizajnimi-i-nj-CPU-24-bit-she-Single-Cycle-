`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 01:50:36 PM
// Design Name: 
// Module Name: DataMemory
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


module DataMemory(
  input [23:0] Adresa,
    input [23:0] WriteData,
    input MemWrite,
    input MemRead,
    input Clock,
    output [23:0] ReadData
    );
    
    reg[15:0] dMem[127:0];
    initial  $readmemh("DataMemory.mem", dMem);
    
    always@(posedge Clock)
    begin
    if(MemWrite) 
    begin
    dMem[Adresa] <= WriteData[23:16];  
    dMem[Adresa+1] <= WriteData[15:8];  
    dMem[Adresa+2] <= WriteData[7:0];  
    
    end
    end
    always @(negedge Clock)
    begin
    $writememh("DataMemory.mem", dMem);
    end
    
    assign ReadData = {dMem[Adresa],dMem[Adresa+1],dMem[Adresa+2]};
    
endmodule
