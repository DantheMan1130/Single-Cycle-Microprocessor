`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:37:51 03/04/2017 
// Design Name: 
// Module Name:    RegisterFile 
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
module RegisterFile(input [4:0] A1, [4:0] A2, [4:0] A3,
						  input signed [31:0] WD3, 
						  input CLK, WE3, 
						  output reg signed [31:0] RD1, 
						  output reg signed [31:0] RD2,
						  output reg signed [31:0] Register0, Register1, Register2, Register3, Register4, Register5, Register6);

reg [31:0] Register_File [0:31];

// Initialize Registers
initial begin
	$readmemb("RegisterFileValues.txt", Register_File, 0, 31);
end

// Synchronous Write
always @(posedge CLK) begin
	if(WE3)
		Register_File[A3] <= WD3;
end

// Asynchronous Read
always @* begin
	RD1 = Register_File[A1];
	RD2 = Register_File[A2];
	
	Register0 = Register_File[0]; // To display register values.
	Register1 = Register_File[1];
	Register2 = Register_File[2];
	Register3 = Register_File[3];
	Register4 = Register_File[4];
	Register5 = Register_File[5];
	Register6 = Register_File[6];
end

endmodule
