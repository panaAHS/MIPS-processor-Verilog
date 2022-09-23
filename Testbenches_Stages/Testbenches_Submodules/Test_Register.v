`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:28:16 12/19/2021
// Design Name:   Register
// Module Name:   /home/ise/Desktop/Project-HW1/Test_Register.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Register;

	// Inputs
	reg [31:0] Data;
	reg CLK;
	reg WE;
	reg reset;

	// Outputs
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	Register uut (
		.Data(Data), 
		.Dout(Dout), 
		.CLK(CLK), 
		.WE(WE), 
		.reset(reset)
	);
   always begin 
	CLK = 1; //Clock
	#0.001;
	CLK = 0;
	#0.001;
	end
	
	initial begin
		// Initialize Inputs
		reset = 0;
		WE = 1;
		Data = 32'b11111111111;
	
		#0.001;
		reset = 0;
		WE = 1;
		#0.002;
		Data = 32'b1011111111;
		#0.002;
		WE = 1;
		#0.001;
      reset = 1;
		WE = 1;
		Data = 32'b1111111111111;
		#0.002;
		Data = 32'b1011111111;
		#0.002;
		
		reset = 1;
	
		// Add stimulus here
        
		// Add stimulus here

	end
      
endmodule

