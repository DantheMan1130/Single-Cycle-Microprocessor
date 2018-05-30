`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:59 03/04/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(input signed [31:0] SrcA, signed [31:0] SrcB,
			  input [2:0] ALUControl,
			  output reg signed [31:0] ALUResult,
			  output reg Zero);

always @* begin
	case (ALUControl)
		3'b000: ALUResult = (SrcA & SrcB);
		3'b001: ALUResult = (SrcA | SrcB);
		3'b010: ALUResult = (SrcA + SrcB);
		3'b011: ALUResult = (SrcA * SrcB);
		//3'b100:
		//3'b101:
		3'b110: ALUResult = (SrcA - SrcB);
		3'b111: begin
			if(SrcA <= SrcB)
				ALUResult = 1;
			else
				ALUResult = 0;
		end
		default: ALUResult = 32'bX;
	endcase
end

always @* begin
	if(ALUResult == 0)
		Zero = 1;
	else
		Zero = 0;
end
			
endmodule
