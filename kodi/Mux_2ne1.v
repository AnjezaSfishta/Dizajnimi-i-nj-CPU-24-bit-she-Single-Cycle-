`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/05/2023 12:00:31 PM
// Design Name: 
// Module Name: Mux_2ne1
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


module Mux_2ne1(
    input Hyrja0,
    input Hyrja1,
    input S,
    output Dalja
    );
    
    assign Dalja= S ? Hyrja1 : Hyrja0;
endmodule

