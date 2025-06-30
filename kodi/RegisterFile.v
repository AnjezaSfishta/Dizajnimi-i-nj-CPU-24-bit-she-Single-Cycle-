`timescale 1ns / 1ps


module RegisterFile(
input wire[3:0] RS,
input wire [3:0] RT,
input wire [3:0] RD,
input wire [23:0] WriteData,
output wire [23:0] ReadRS,
output wire [23:0] ReadRT,
input wire RegWrite,
input wire Clock);


reg[23:0] Registers[15:0];
integer i;

initial
begin
    for(i = 0; i < 16; i = i + 1)begin
       Registers[i] = 24'd0; 
       end
    
end

always @ (posedge Clock)
begin
if(RegWrite) Registers[RD] <= WriteData;
end

assign ReadRS = Registers[RS];
assign ReadRT = Registers[RT];

endmodule
