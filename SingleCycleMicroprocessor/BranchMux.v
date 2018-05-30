`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:32:44 02/26/2017 
// Design Name: 
// Module Name:    BranchMux 
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
module BranchMux(input signed [31:0] PCPlus1, signed [31:0] PCBranch,
					  input Zero, Branch,
					  output reg PCSrc,
					  output reg signed [31:0] BranchMuxOut);

always @* begin
	PCSrc = (Zero && Branch);
end

always @* begin // Includes AND gate functionality.
	if(PCSrc)
		BranchMuxOut = PCBranch;
	else
		BranchMuxOut = PCPlus1;
end

endmodule
