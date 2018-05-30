`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:35 02/26/2017 
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
					 input RegDst,
					 output reg signed [4:0] WriteReg);

always @* begin
	if(RegDst)
		WriteReg = rd;
	else
		WriteReg = rt;
end

endmodule
