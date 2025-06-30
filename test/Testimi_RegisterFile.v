`timescale 1ns / 1ps


module Testimi_RegisterFile();

reg[3:0] RS, RT, RD;
reg RegWrite, Clock;
reg[23:0] WriteData;
wire[23:0] ReadRS, ReadRT;


initial
begin
#0 Clock=1'b0;
#5 RD=4'd6; WriteData = 23'd3; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0;RegWrite = 1'b1;
#5 RD=4'd7; WriteData = 23'd5; RegWrite=1'b1;
#5 Clock=1'b1;
#5 Clock=1'b0; RegWrite=0;
#5 RS=4'd6; RT=4'd7;
#5 $stop;




end
RegisterFile RF(RS, RT, RD, WriteData, ReadRS, ReadRT, RegWrite, Clock);
endmodule
