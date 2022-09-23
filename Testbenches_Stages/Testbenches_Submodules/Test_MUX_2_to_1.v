`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:12:45 12/22/2021
// Design Name:   MUX_2_to_4
// Module Name:   /home/ise/Desktop/Project-HW1/Test_MUX_2_to_1.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_2_to_4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MUX_2_to_1;

	// Inputs
	reg [31:0] In0;
	reg [31:0] In1;
	reg Sel;

	// Outputs
	wire [31:0] Mux_Out;

	// Instantiate the Unit Under Test (UUT)
	MUX_2_to_4 uut (
		.In0(In0), 
		.In1(In1), 
		.Sel(Sel), 
		.Mux_Out(Mux_Out)
	);

	initial begin
		// Initialize Inputs
		In0 = 32'b00111;
		In1 = 32'b001111111111;
		Sel = 1;
		#0.002;
		Sel = 0;
		
		

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here

	end
      
endmodule

