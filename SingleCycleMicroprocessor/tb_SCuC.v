`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:15:54 03/04/2017
// Design Name:   Structural
// Module Name:   C:/Users/Dan/Desktop/Xilinx_ISE_DS_Win_14.7_1015_1/SingleCycleMicroprocessor/tb_SCuC.v
// Project Name:  SingleCycleMicroprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Structural
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_SCuC;

	// Inputs
	reg CLK;
	reg RST;

	integer i = 0;
	
	// Outputs
	wire signed [31:0] PC;
	wire [31:0] Instr;
	wire signed [31:0] ScrA;
	wire signed [31:0] ScrB;
	wire signed [31:0] ALUResult;
	wire signed [31:0] Register0Wire, Register1Wire, Register2Wire, Register3Wire, Register4Wire, Register5Wire, Register6Wire;
	wire signed [31:0] Memory13Wire, Memory14Wire;
		
	// Instantiate the Unit Under Test (UUT)
	ProcessorStructural uut (
		.CLK(CLK), 
		.RST(RST), 
		.PC(PC),
		.Instr(Instr),
		.ScrA(ScrA),
		.ScrB(ScrB),
		.ALUResult(ALUResult), 
		.Register0(Register0Wire),
		.Register1(Register1Wire), 
		.Register2(Register2Wire), 
		.Register3(Register3Wire), 
		.Register4(Register4Wire), 
		.Register5(Register5Wire), 
		.Register6(Register6Wire),
		.Memory13(Memory13Wire),
		.Memory14(Memory14Wire)
	);

	initial begin
		CLK = 0;
		forever #20 CLK = ~CLK;
	end
	
	initial begin
		RST = 1;
		@(posedge CLK);
		RST = 0;
		@(posedge CLK);
		for(i = 0; i < 17; i = i + 1)
		@(posedge CLK);
		
		$finish();

	end
      
endmodule

