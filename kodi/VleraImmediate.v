`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/13/2023 07:57:36 PM
// Design Name: 
// Module Name: VleraImmediate
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


module VleraImmediate(

output reg[23:0]numri,
output reg kercimi_lart,
output reg kercimi_poshte
);

always @(numri)
 begin
    
	if ((numri >> 23) == 1'b0) begin  // check the sign bit
    
        kercimi_lart <= 1'b1; //Nese eshte nr.pozitive i bie qe duhet kërcyer poshtë ne program nga PC+3
        kercimi_poshte <= 1'b0;

    end else 
    begin
    
        kercimi_poshte <= 1'b0;
        kercimi_lart <= 1'b1; //Nese eshte nr.negative i bie qe duhet kërcyer lart ne program nga PC+3
    
	end
    
	numri <= numri + 24'h800000;  // Sipas 2 komplementit

end

endmodule
