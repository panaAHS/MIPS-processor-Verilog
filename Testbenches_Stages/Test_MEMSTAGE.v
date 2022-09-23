`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:28:57 12/26/2021
// Design Name:   MEMSTAGE
// Module Name:   /home/ise/Desktop/Project-HW1/Test_MEMSTAGE.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MEMSTAGE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MEMSTAGE;

	// Inputs
	reg [5:0] opcode;
	reg clk;
	reg Mem_WrEn;
	reg [31:0] ALU_MEM_Addr;
	reg [31:0] MEM_Dataln;

	// Outputs
	wire [31:0] MEM_DataOut;

	// Instantiate the Unit Under Test (UUT)
	MEMSTAGE uut (
		.clk(clk), 
		.opcode(opcode),
		.Mem_WrEn(Mem_WrEn), 
		.ALU_MEM_Addr(ALU_MEM_Addr), 
		.MEM_Dataln(MEM_Dataln), 
		.MEM_DataOut(MEM_DataOut)
	);
always begin 
	clk = 0; //Clock
	#0.001;
	clk = 1;
	#0.001;
	end
	
	initial begin
		// Initialize Inputs
		Mem_WrEn = 0;
		ALU_MEM_Addr = 0;
		opcode = 6'b0;
		MEM_Dataln = 0;
		#0.002;
		Mem_WrEn = 1;
		ALU_MEM_Addr = 10'b10;
		MEM_Dataln = 32'b1010101010;
		#0.002;
		Mem_WrEn = 0;
		ALU_MEM_Addr = 10'b10;
		MEM_Dataln = 32'b1010101010;
		#0.002;
		opcode = 6'b111;
		Mem_WrEn = 1;
		ALU_MEM_Addr = 10'b1100;
		MEM_Dataln = 32'b111111111111111111;
      #0.002;
		Mem_WrEn = 0;
		ALU_MEM_Addr = 10'b1100;
		MEM_Dataln = 32'b111111111111111111;		

		        
		// Add stimulus here

	end
      
endmodule

