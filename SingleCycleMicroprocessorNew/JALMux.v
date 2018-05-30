`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:40 03/04/2017 
// Design Name: 
// Module Name:    JALMux1 
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
module JALMux(input signed [31:0] PCPlus1, signed [31:0] Result,
				  input JAL,
				  output reg signed [31:0] JALMuxOut);

always @* begin
	if(JAL)
		JALMuxOut = PCPlus1;
	else
		JALMuxOut = Result;
end

endmodule
