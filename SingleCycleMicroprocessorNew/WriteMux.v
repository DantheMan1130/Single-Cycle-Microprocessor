`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:19 03/04/2017 
// Design Name: 
// Module Name:    WriteMux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module WriteMux(input [4:0] rt, [4:0] rd,
					 input [1:0] RegDst,
					 output reg signed [4:0] WriteReg);

always @* begin
	if(RegDst == 2'b01)
		WriteReg = rd;
	else if(RegDst == 2'b00)
		WriteReg = rt;
	else if(RegDst == 2'b10)
		WriteReg = 5'b11111;
end

endmodule
