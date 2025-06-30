`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 12:11:01 PM
// Design Name: 
// Module Name: TestAlu1bit
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


module TestAlu1bit();
reg A,B,Less,CIN;
reg [1:0] Operation;
wire Result,COUT;

initial
$monitor("A= &b ,B=&b,Less=&b,CIN=&b,Operation=&b,Result=&b,COUT=&b",A,B,Less,CIN,Operation,Result,COUT);
 
 initial
 begin
 //AND
 #0 A=1'b0; B=1'b0;CIN=1'b0;Less=1'b0;Operation=2'b00;
 #10 A=1'b0; B=1'b1;CIN=1'b0;Less=1'b0;Operation=2'b00;
 #10 A=1'b1; B=1'b0;CIN=1'b0;Less=1'b0;Operation=2'b00;
 #10 A=1'b1; B=1'b1;CIN=1'b0;Less=1'b0;Operation=2'b00;
 //OR
 #10 A=1'b0; B=1'b0;CIN=1'b0;Less=1'b0;Operation=2'b01;
 #10 A=1'b0; B=1'b1;CIN=1'b0;Less=1'b0;Operation=2'b01;
 #10 A=1'b1; B=1'b0;CIN=1'b0;Less=1'b0;Operation=2'b01;
 #10 A=1'b1; B=1'b1;CIN=1'b0;Less=1'b0;Operation=2'b01;
 
 //ADD
 #10 A=1'b0; B=1'b0;CIN=1'b0;Less=1'b0;Operation=2'b10;
 #10 A=1'b0; B=1'b1;CIN=1'b0;Less=1'b0;Operation=2'b10;
 #10 A=1'b1; B=1'b0;CIN=1'b0;Less=1'b0;Operation=2'b10;
 #10 A=1'b1; B=1'b1;CIN=1'b0;Less=1'b0;Operation=2'b10;
 #10 A=1'b1; B=1'b1;CIN=1'b1;Less=1'b0;Operation=2'b10;
 
 //SUB
  #10 A=1'b0; B=1'b0;CIN=1'b1;Less=1'b0;Operation=2'b10;
  #10 A=1'b0; B=1'b1;CIN=1'b1;Less=1'b0;Operation=2'b10;
  #10 A=1'b1; B=1'b0;CIN=1'b1;Less=1'b0;Operation=2'b10;
  #10 A=1'b1; B=1'b1;CIN=1'b1;Less=1'b0;Operation=2'b10;

 //NOR
 #10 A=1'b0; B=1'b0;CIN=1'b0;Less=1'b0;Operation=2'b00;
 #10 A=1'b0; B=1'b1;CIN=1'b0;Less=1'b0;Operation=2'b00;
 #10 A=1'b1; B=1'b0;CIN=1'b0;Less=1'b0;Operation=2'b00;
 #10 A=1'b1; B=1'b1;CIN=1'b0;Less=1'b0;Operation=2'b00;
 #10 $stop;
  end
 
 ALU_1bit ALUtest(A,B,Less,CIN,Operation,Result,COUT);
 

  
endmodule