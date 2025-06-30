`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/09/2023 07:55:26 PM
// Design Name: 
// Module Name: Mux_8ne1
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


module Mux_8ne1(
    input Hyrja0,
    input Hyrja1,
    input Hyrja2,
    input Hyrja3,
    input Hyrja4,
    input Hyrja5,
    input Hyrja6,
    input Hyrja7,
    input [2:0] S,
    output Dalja
    );
    //S 000 Hyrja0
    //S 001 Hyrja1
    //S 010 Hyrja2
    //S 011 Hyrja3
     //S 100 Hyrja4
    //S 101 Hyrja5
     //S 110 Hyrja6
    //S 111 Hyrja7
    
    assign Dalja = (S==3'b000)?Hyrja0 :
                    (S==3'b001)? Hyrja1:
                    (S==3'b010)?Hyrja2 :
                    (S==3'b011)?Hyrja3 :
                    (S==3'b100)?Hyrja4:
                    (S==3'b101)?Hyrja5:
                    (S==3'b110)?Hyrja6: Hyrja7;
endmodule
