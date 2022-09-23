`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   08:47:27 12/26/2021
// Design Name:   ALUSTAGE
// Module Name:   /home/ise/Desktop/Project-HW1/Test_ALUSTAGE.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALUSTAGE
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_ALUSTAGE;

	// Inputs
	reg [31:0] RF_A;
	reg [31:0] RF_B;
	reg [31:0] Immed;
	reg ALU_Bin_sel;
	reg [3:0] ALU_func;

	// Outputs
	wire [31:0] ALU_out;
	wire zero;

	// Instantiate the Unit Under Test (UUT)
	ALUSTAGE uut (
		.RF_A(RF_A), 
		.RF_B(RF_B), 
		.Immed(Immed), 
		.ALU_Bin_sel(ALU_Bin_sel), 
		.ALU_func(ALU_func), 
		.ALU_out(ALU_out), 
		.zero(zero)
	);

	initial begin
		// Initialize Inputs
		RF_A = 32'b1;
		RF_B = 32'b1000;
		Immed = 32'b100;
		ALU_Bin_sel = 0;
		ALU_func = 0;
      #0.004;
		ALU_Bin_sel = 1;
      #0.004;
		ALU_func = 4'b10;
		#0.004;
		ALU_func = 4'b11;
		#0.004;
		ALU_func = 4'b100;
		#0.004;
		ALU_func = 4'b1101;
		#0.004;
		ALU_func = 4'b1001;
		#0.004;
		RF_A = 32'b1001;
		RF_B = 32'b10;
		Immed = 032'b101;
		ALU_Bin_sel = 1;
		ALU_func = 4'b0;
		#0.002;
		ALU_func = 4'b1;
		#0.002;
		ALU_func = 4'b10;
		#0.002;
		ALU_func = 4'b11;
		#0.002;
		ALU_func = 4'b100;
		#0.002;
		ALU_func = 4'b1000;
		#0.002;
		ALU_func = 4'b1010;
		#0.002;
		ALU_func = 4'b1001;
		#0.002;
		ALU_func = 4'b1100;
		#0.002;
		ALU_func = 4'b1101;
		#0.002;
		ALU_Bin_sel = 0;
		ALU_func = 4'b0;
		#0.002;
		ALU_func = 4'b1;
		#0.002;
		ALU_func = 4'b10;
		#0.002;
		ALU_func = 4'b11;
		#0.002;
		ALU_func = 4'b100;
		#0.002;
		ALU_func = 4'b1000;
		#0.002;
		ALU_func = 4'b1010;
		#0.002;
		ALU_func = 4'b1001;
		#0.002;
		ALU_func = 4'b1100;
		#0.002;
		ALU_func = 4'b1101;
		#0.002;
		



		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

