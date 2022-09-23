`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:32:42 12/26/2021
// Design Name:   MUX_2_to_1_5bit
// Module Name:   /home/ise/Desktop/Project-HW1/Test_MUX_2_to_1_5bit.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_2_to_1_5bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MUX_2_to_1_5bit;

	// Inputs
	reg [4:0] In0;
	reg [4:0] In1;
	reg Sel;

	// Outputs
	wire [4:0] Mux_Out;

	// Instantiate the Unit Under Test (UUT)
	MUX_2_to_1_5bit uut (
		.In0(In0), 
		.In1(In1), 
		.Sel(Sel), 
		.Mux_Out(Mux_Out)
	);

	initial begin
		// Initialize Inputs
		In0 = 1;
		In1 = 5'b1111;
		Sel = 0;
		#0.004;
		Sel = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

