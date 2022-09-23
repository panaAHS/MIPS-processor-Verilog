`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:35:57 12/23/2021
// Design Name:   MUX_2_to_1
// Module Name:   /home/ise/Desktop/Project-HW1/test_mux2to1.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_2_to_1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_mux2to1;

	// Inputs
	reg [31:0] In0;
	reg [31:0] In1;
	reg Sel;

	// Outputs
	wire [31:0] Mux_Out;

	// Instantiate the Unit Under Test (UUT)
	MUX_2_to_1 uut (
		.In0(In0), 
		.In1(In1), 
		.Sel(Sel), 
		.Mux_Out(Mux_Out)
	);

	initial begin
		// Initialize Inputs
		In0 = 0;
		In1 = 1;
		Sel = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

