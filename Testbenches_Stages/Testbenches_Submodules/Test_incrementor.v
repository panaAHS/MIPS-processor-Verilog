`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:25:39 12/22/2021
// Design Name:   incrementor
// Module Name:   /home/ise/Desktop/Project-HW1/Test_incrementor.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: incrementor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_incrementor;

	// Inputs
	reg [31:0] incrementor_In;

	// Outputs
	wire [31:0] incrementor_Out;

	// Instantiate the Unit Under Test (UUT)
	incrementor uut (
		.incrementor_In(incrementor_In), 
		.incrementor_Out(incrementor_Out)
	);

	initial begin
		// Initialize Inputs
		incrementor_In = 32'b1;

		// Wait 100 ns for global reset to finish
		        
		// Add stimulus here

	end
      
endmodule

