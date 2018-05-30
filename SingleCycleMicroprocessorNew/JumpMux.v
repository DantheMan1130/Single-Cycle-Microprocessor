`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:29 03/04/2017 
// Design Name: 
// Module Name:    JumpMux 
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
module JumpMux(input signed [31:0] BranchMuxOut, signed [31:0] PCJump, signed [31:0] JumpR,
					input [1:0] Jump,
					output reg signed [31:0] PC_last);

always @* begin
	if(Jump == 2'b01)
		PC_last = PCJump;
	else if(Jump == 2'b00)
		PC_last = BranchMuxOut;
	else if(Jump == 2'b10)
		PC_last = JumpR;
end

endmodule
