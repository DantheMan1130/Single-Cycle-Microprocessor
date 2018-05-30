`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:44:36 03/03/2017 
// Design Name: 
// Module Name:    DataMemory 
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
module DataMemory(input [31:0] A, input [31:0] WD, 
						input CLK, WE,
						output reg [31:0] RD,
						output reg signed [31:0] Memory13, Memory14);

// Width of 32 bits by 100 rows.
reg [31:0] Data_Memory [99:0];

// Synchronous Write
always @(posedge CLK)	begin
	if(WE)
		Data_Memory[A] <= WD;
end

// Asynchronous Read
always @* begin
	RD = Data_Memory[A];
	
	Memory13 = Data_Memory[13]; // For outputs.
	Memory14 = Data_Memory[14];
end

endmodule
