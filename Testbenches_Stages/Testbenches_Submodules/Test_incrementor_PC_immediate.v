`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:31:22 12/22/2021
// Design Name:   incrementor_PC_immediate
// Module Name:   /home/ise/Desktop/Project-HW1/Test_incrementor_PC_immediate.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: incrementor_PC_immediate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_incrementor_PC_immediate;

	// Inputs
	reg [31:0] In1;
	reg [31:0] In2;

	// Outputs
	wire [31:0] Out;

	// Instantiate the Unit Under Test (UUT)
	incrementor_PC_immediate uut (
		.In1(In1), 
		.In2(In2), 
		.Out(Out)
	);

	initial begin
		// Initialize Inputs
		In1 = 32'b1;
		In2 = 32'b10;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

