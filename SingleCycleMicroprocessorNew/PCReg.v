`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:58 03/04/2017 
// Design Name: 
// Module Name:    PCReg 
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
module PCReg(input signed [31:0] PC_last,
				 input CLK, RST,
				 output reg signed [31:0] PC);

always @(posedge CLK or posedge RST) begin // Asynchronous reset.
	if(RST)
		PC <= 0;
	else
		PC <= PC_last;
end

endmodule
