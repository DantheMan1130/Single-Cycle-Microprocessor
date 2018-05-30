`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:39:17 03/04/2017 
// Design Name: 
// Module Name:    ResultMux 
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
module ResultMux(input signed [31:0] ALUResult, signed [31:0] ReadData,
					  input MemtoReg,
					  output reg signed [31:0] Result);
					  
always @* begin
	if(MemtoReg)
		Result = ReadData;
	else
		Result = ALUResult;
end

endmodule
