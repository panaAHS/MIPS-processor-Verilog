`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:15:08 12/28/2021
// Design Name:   DECSTAGE
// Module Name:   /home/ise/Desktop/Project-HW1/Test_Decstage.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DECSTAGE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Decstage;

	// Inputs
	reg [31:0] Instr;
	reg RF_WrEn;
	reg [31:0] ALU_out;
	reg [31:0] MEM_out;
	reg RF_WrData_sel;
	reg RF_B_sel;
	reg Clk;
	reg reset;

	// Outputs
	wire [31:0] Immed;
	wire [31:0] RF_A;
	wire [31:0] RF_B;

	// Instantiate the Unit Under Test (UUT)
	DECSTAGE uut (
		.Instr(Instr), 
		.RF_WrEn(RF_WrEn), 
		.ALU_out(ALU_out), 
		.MEM_out(MEM_out), 
		.RF_WrData_sel(RF_WrData_sel), 
		.RF_B_sel(RF_B_sel), 
		.Clk(Clk), 
		.reset(reset), 
		.Immed(Immed), 
		.RF_A(RF_A), 
		.RF_B(RF_B)
	);
	always begin 
		Clk = 0; //Clock
		#0.001;
		Clk = 1;
		#0.001;
	end
	
	initial begin
		// Initialize Inputs
		Instr = 0;
		RF_WrEn = 0;
		ALU_out = 0;
		MEM_out = 0;
		RF_WrData_sel = 0;
		RF_B_sel = 0;
		reset = 1;
		#0.002;
		reset = 0;
		Instr = 32'b01111100001000010000011111101010;
		RF_WrEn = 1;
		ALU_out = 32'b111111110000000011111111;
		MEM_out = 32'b000000001111111100000000;
		RF_WrData_sel = 0;
		RF_B_sel = 0;
		#0.004;
		Instr = 32'b11001000001001000010011111101010;
		RF_WrEn = 1;
		ALU_out = 32'b111111110000000011111111;
		MEM_out = 32'b000000001111111100000000;
		RF_WrData_sel = 1;
		RF_B_sel = 1;
		


		
        
		// Add stimulus here

	end
      
endmodule

