`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:10:10 12/24/2021
// Design Name:   IFSTAGE
// Module Name:   /home/ise/Desktop/Project-HW1/test_ifstage.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: IFSTAGE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_ifstage;

	// Inputs
	reg clk;
	reg [31:0] PC_Immed;
	reg PC_sel;
	reg PC_LdEn;
	reg Reset;

	// Outputs
	wire [31:0] Instr;
	//wire [31:0] test;
	//wire [31:0] test2;
	//wire [31:0] PCout;
	//wire [9:0] test1;

	// Instantiate the Unit Under Test (UUT)
	IFSTAGE uut (
		.clk(clk), 
		.Instr(Instr), 
		.PC_Immed(PC_Immed), 
		.PC_sel(PC_sel), 
		.PC_LdEn(PC_LdEn), 
		.Reset(Reset)//, 
		//.test(test), 
		//.test2(test2), 
		//.PCout(PCout), 
		//.test1(test1)
	);

	always begin 
	clk = 0; //Clock
	#0.001;
	clk = 1;
	#0.001;
	end
	
	initial begin
		// Initialize Inputs
      Reset = 1;
		PC_Immed = 32'b0;
		PC_sel = 1'b0;
		PC_LdEn = 1;
		#0.002;
	   Reset = 0;
		PC_LdEn = 0;
		PC_Immed = 32'b0;
		PC_sel = 1'b0;
		
		#0.0020;
		Reset = 0;
		PC_LdEn = 1;
		PC_Immed = 32'b0;
		PC_sel = 1'b0;
		#0.008;
		Reset = 0;
		PC_LdEn = 0;
		PC_Immed = 32'b0;
		PC_sel = 1'b0;
		#0.020;
		Reset = 0;
		PC_LdEn = 1;
		PC_Immed = 32'b0;
		PC_sel = 1'b0;
		#0.02;
		Reset = 1;
		#0.003;
		Reset = 0;
		
		//PC_Immed = 32'b1000000000000000000000000;
		
	end
      
endmodule

