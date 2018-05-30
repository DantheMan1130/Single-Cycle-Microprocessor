`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:08 02/26/2017 
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
module JumpMux(input signed [31:0] BranchMuxOut, signed [31:0] PCJump,
					input Jump,
					output reg signed [31:0] PC_last);

always @* begin
	if(Jump)
		PC_last = PCJump;
	else
		PC_last = BranchMuxOut;
end

endmodule
