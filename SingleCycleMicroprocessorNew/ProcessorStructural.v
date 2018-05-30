`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:33:29 03/04/2017 
// Design Name: 
// Module Name:    ProcessorStructural 
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
module ProcessorStructural(input CLK, RST, 
								   output reg signed [31:0] PC, 
								   output reg [31:0] Instr, 
								   output reg signed [31:0] SrcA, 
								   output reg signed [31:0] SrcB,
								   output reg signed [31:0] ALUResult, 
								   output reg signed [31:0] Register0, Register1, Register2, Register3, Register4, Register5, Register6, 
								   output reg signed [31:0] Memory13, Memory14);

	wire signed [31:0] PCPlus1Wire; 
	wire signed [31:0] PCBranchWire; 
	wire signed [31:0] PCJumpWire; // Don't need as concantenated in-line.
	wire signed [31:0] BranchMuxOutWire;
	wire signed [31:0] JALMuxOutWire;
	wire signed [31:0] PC_lastWire;
	wire signed [31:0] PCWire;
	wire signed [31:0] SrcAWire;
	wire signed [31:0] SrcBWire;
	wire signed [31:0] ResultWire;
	wire signed [31:0] WriteDataWire; 
	wire signed [31:0] ALUResultWire;
	wire signed [31:0] SignImmWire;
	wire signed [31:0] ReadDataWire;
	wire signed [31:0] Register0Wire, Register1Wire, Register2Wire, Register3Wire, Register4Wire, Register5Wire, Register6Wire;
	wire signed [31:0] Memory13Wire, Memory14Wire;

	wire [31:0] InstrWire;
	wire [4:0] WriteRegWire;
	wire [2:0] ALUControlWire;
	wire [1:0] JumpWire;
	wire [1:0] RegDstWire;
	wire ZeroWire, BranchWire, PCSrcWire, RegWriteWire, ALUSrcWire, MemtoRegWire, MemWriteWire, JALWire;

	BranchMux BM00 (.PCPlus1(PCPlus1Wire), .PCBranch(PCBranchWire), .Zero(ZeroWire), .Branch(BranchWire), .PCSrc(PCSrcWire), .BranchMuxOut(BranchMuxOutWire));

	JumpMux JM00 (.BranchMuxOut(BranchMuxOutWire), .PCJump({{PCWire[31:26]}, {InstrWire[25:0]}}), .JumpR(SrcAWire), .Jump(JumpWire), .PC_last(PC_lastWire));
					
	PCReg	PCR00 (.PC_last(PC_lastWire), .CLK(CLK), .RST(RST), .PC(PCWire));

	ProgramCounter	PC00 (.PC(PCWire), .PCPlus1(PCPlus1Wire));

	InstructionMemory IM00 (.A(PCWire), .RD(InstrWire));
	
	JALMux JALM00 (.PCPlus1(PCPlus1Wire), .Result(ResultWire), .JAL(JALWire), .JALMuxOut(JALMuxOutWire));

	RegisterFile RF00 (.A1(InstrWire[25:21]), .A2(InstrWire[20:16]), .A3(WriteRegWire), .WD3(JALMuxOutWire), .CLK(CLK), .WE3(RegWriteWire), .RD1(SrcAWire), .RD2(WriteDataWire), .Register0(Register0Wire), .Register1(Register1Wire), .Register2(Register2Wire), .Register3(Register3Wire), .Register4(Register4Wire), .Register5(Register5Wire), .Register6(Register6Wire));

	ALU ALU00 (.SrcA(SrcAWire), .SrcB(SrcBWire), .ALUControl(ALUControlWire), .ALUResult(ALUResultWire), .Zero(ZeroWire));

	SrcMux SM00 (.WriteData(WriteDataWire), .SignImm(SignImmWire), .ALUSrc(ALUSrcWire), .SrcB(SrcBWire));
				  
	SignExtend SE00 (.Imm(InstrWire[15:0]), .SignImm(SignImmWire));

	ResultMux RM00 (.ALUResult(ALUResultWire), .ReadData(ReadDataWire), .MemtoReg(MemtoRegWire), .Result(ResultWire));

	DataMemory DM00 (.A(ALUResultWire), .WD(WriteDataWire), .CLK(CLK), .WE(MemWriteWire), .RD(ReadDataWire), .Memory13(Memory13Wire), .Memory14(Memory14Wire));  

	WriteMux WM00 (.rt(InstrWire[20:16]), .rd(InstrWire[15:11]), .RegDst(RegDstWire), .WriteReg(WriteRegWire));

	BranchAdder BA00 (.SignImm(SignImmWire), .PCPlus1(PCPlus1Wire), .PCBranch(PCBranchWire));

	ControlUnit CU00 (.Op(InstrWire[31:26]), .Funct(InstrWire[5:0]), .RST(RST), .MemtoReg(MemtoRegWire), .MemWrite(MemWriteWire), .Branch(BranchWire), .ALUControl(ALUControlWire), .ALUSrc(ALUSrcWire), .RegDst(RegDstWire), .RegWrite(RegWriteWire), .Jump(JumpWire));


always @* begin
	PC = PCWire;
	Instr = InstrWire;
	SrcA = SrcAWire;
	SrcB = SrcBWire;
	ALUResult = ALUResultWire;
	
	Register0 = Register0Wire;
	Register1 = Register1Wire;
	Register2 = Register2Wire;
	Register3 = Register3Wire;
	Register4 = Register4Wire;
	Register5 = Register5Wire;
	Register6 = Register6Wire;
	
	Memory13 = Memory13Wire;
	Memory14 = Memory14Wire;
end
				
endmodule
