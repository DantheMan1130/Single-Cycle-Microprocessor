`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:51:05 02/26/2017 
// Design Name: 
// Module Name:    SrcMux 
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
module SrcMux(input signed [31:0] WriteData, signed [31:0] SignImm,
				  input ALUSrc,
				  output reg signed [31:0] SrcB);

always @* begin
	if(ALUSrc)
		SrcB = SignImm;
	else
		SrcB = WriteData;
end

endmodule
