`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:28:19 02/26/2017 
// Design Name: 
// Module Name:    BranchAdder 
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
module BranchAdder(input signed [31:0] SignImm, signed [31:0] PCPlus1,
						 output signed [31:0] PCBranch);

assign PCBranch = (SignImm + PCPlus1);

endmodule
