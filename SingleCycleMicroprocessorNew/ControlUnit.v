`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:41:29 03/04/2017 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(input [5:0] Op, [5:0] Funct, 
						 input RST, 
						 output reg MemtoReg, MemWrite, Branch, ALUSrc, RegWrite, JAL,
						 output reg [1:0] RegDst,
						 output reg [1:0] Jump,
						 output reg [2:0] ALUControl);

/*Need to implement:
addi
or
and
add
beq
slt
sub
sw
lw
j
jr
mul
jal
*/

always @* begin
	if(RST) begin
		MemtoReg = 0;
		MemWrite = 0;
		Branch = 0;
		ALUControl = 3'b000;
		ALUSrc = 0;
		RegDst = 2'b00;
		RegWrite = 0;
		Jump = 2'b00;
		JAL = 0;
	end

	else begin
	// R-type Instructions
	if(Op == 6'b000000) begin
		if(Funct == 6'b100101) begin	// OR instruction
			MemtoReg = 0;
			MemWrite = 0;
			Branch = 0;
			ALUControl = 3'b001;
			ALUSrc = 0;
			RegDst = 2'b01;
			RegWrite = 1;
			Jump = 2'b00;
			JAL = 0;
		end

		else if(Funct == 6'b100100) begin	// AND instruction
			MemtoReg = 0;
			MemWrite = 0;
			Branch = 0;
			ALUControl = 3'b000;
			ALUSrc = 0;
			RegDst = 2'b01;
			RegWrite = 1;
			Jump = 2'b00;
			JAL = 0;
		end
		
		else if(Funct == 6'b100010) begin	// SUB Instruction
			MemtoReg = 0;
			MemWrite = 0;
			Branch = 0;
			ALUControl = 3'b110;
			ALUSrc = 0;
			RegDst = 2'b01;
			RegWrite = 1;
			Jump = 2'b00;
			JAL = 0;
		end
		
		else if(Funct == 6'b100000) begin	// ADD instruction
			MemtoReg = 0;
			MemWrite = 0;
			Branch = 0;
			ALUControl = 3'b010;
			ALUSrc = 0;
			RegDst = 2'b01;
			RegWrite = 1;
			Jump = 2'b00;
			JAL = 0;
		end
	
		else if(Funct == 6'b101010) begin	// SLT instruction
			MemtoReg = 0;
			MemWrite = 0;
			Branch = 0;
			ALUControl = 3'b111;
			ALUSrc = 0;
			RegDst = 2'b01;
			RegWrite = 1;
			Jump = 2'b00;
			JAL = 0;
		end
		
		else if(Funct == 6'b001000) begin	// JR instruction
			MemtoReg = 1'bX;
			MemWrite = 0;
			Branch = 1'bX;
			ALUControl = 1'bX; 
			ALUSrc = 1'bX;
			RegDst = 2'bX;
			RegWrite = 0;
			Jump = 2'b10;
			JAL = 1'bX;
		end
		
		else if(Funct == 6'b011000) begin	// MUL instruction
			MemtoReg = 0;
			MemWrite = 0;
			Branch = 0;
			ALUControl = 3'b011;
			ALUSrc = 0;
			RegDst = 2'b01;
			RegWrite = 1;
			Jump = 2'b00;
			JAL = 0;
		end
	
		else begin	// Default error function code for R-type instructions.
			MemtoReg = 1'bX;
			MemWrite = 1'bX;
			Branch = 1'bX;
			ALUControl = 1'bX;
			ALUSrc = 1'bX;
			RegDst = 2'bX;
			RegWrite = 1'bX;
			Jump = 1'bX;
			JAL = 1'bX;
		end
	end	
	
	
	// I-type Instructions
	else if(Op == 6'b001000) begin	// ADDI Instruction
		MemtoReg = 0;
		MemWrite = 0;
		Branch = 0;
		ALUControl = 3'b010;
		ALUSrc = 1;
		RegDst = 2'b00;
		RegWrite = 1;
		Jump = 2'b00;
		JAL = 0;
	end
	
	else if(Op == 6'b000100) begin	// BEQ Instruction
		MemtoReg = 1'bX;
		MemWrite = 0;
		Branch = 1;
		ALUControl = 3'b110;
		ALUSrc = 0;
		RegDst = 2'bX;
		RegWrite = 0;
		Jump = 2'b00;
		JAL = 1'bX;
	end
	
	else if(Op == 6'b101011) begin	// SW Instruction (JAL?)
		MemtoReg = 1'bX;
		MemWrite = 1;
		Branch = 0;
		ALUControl = 3'b010;
		ALUSrc = 1;
		RegDst = 2'bX;
		RegWrite = 0;
		Jump = 2'b00;
		JAL = 0;
	end
	
	else if(Op == 6'b100011) begin	// LW Instruction
		MemtoReg = 1;
		MemWrite = 0;
		Branch = 0;
		ALUControl = 3'b010;
		ALUSrc = 1;
		RegDst = 2'b00;
		RegWrite = 1;
		Jump = 2'b00;
		JAL = 0;
	end
	

	// J-type Instructions
	else if(Op == 6'b000010) begin	// J instruction
		MemtoReg = 1'bX;
		MemWrite = 0;
		Branch = 1'bX;
		ALUControl = 1'bX; 
		ALUSrc = 1'bX;
		RegDst = 2'bX;
		RegWrite = 0;
		Jump = 2'b01;
		JAL = 1'bX;
	end
	
	else if(Op == 6'b000011) begin	// JAL instruction
		MemtoReg = 1'bX;
		MemWrite = 0;
		Branch = 1'bX;
		ALUControl = 1'bX; 
		ALUSrc = 1'bX;
		RegDst = 2'b10;
		RegWrite = 1;
		Jump = 2'b01;
		JAL = 1;
	end
	

	// Error in OP code.
	else begin
		MemtoReg = 1'bX;
		MemWrite = 1'bX;
		Branch = 1'bX;
		ALUControl = 1'bX; 
		ALUSrc = 1'bX;
		RegDst = 2'bX;
		RegWrite = 1'bX;
		Jump = 1'bX;
		JAL = 1'bX;
	end
	end
end

endmodule
