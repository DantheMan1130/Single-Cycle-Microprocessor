`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:08 03/04/2017 
// Design Name: 
// Module Name:    InstructionMemory 
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
module InstructionMemory(input signed [31:0] A, 
								 output reg [31:0] RD);

// Memory will be expanded based on 32-bit * (# of instructions).
reg [31:0] Instruction_Content [0:17];

// Load Instructions
initial begin 
	// Reads instructions in binary.
	$readmemb("Q2Program.txt", Instruction_Content, 0, 17);
	//$readmemb("Q3Program.txt", Instruction_Content, 0, 17);
	
end

// Asynchronous Read
always @* begin
	RD = Instruction_Content[A];
end

endmodule
