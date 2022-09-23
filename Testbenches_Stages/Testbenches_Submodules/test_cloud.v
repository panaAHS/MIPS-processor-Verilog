`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:08:25 12/28/2021
// Design Name:   Cloud
// Module Name:   /home/ise/Desktop/Project-HW1/test_cloud.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Cloud
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_cloud;

	// Inputs
	reg [15:0] cloud_instr;
	reg [5:0] opcode;

	// Outputs
	wire [31:0] cloud_out;

	// Instantiate the Unit Under Test (UUT)
	Cloud uut (
		.cloud_instr(cloud_instr), 
		.opcode(opcode), 
		.cloud_out(cloud_out)
	);

	initial begin
		// Initialize Inputs
		cloud_instr = 16'b1111111100000000;
		opcode = 6'b111000;
		#0.002;
				cloud_instr = 16'b1111111100000000;

		opcode = 6'b111001;
		#0.002;
		opcode = 6'b110001;
		#0.002;
		opcode = 6'b110010;
		#0.002;
		opcode = 6'b110011;
		#0.002;
		opcode = 6'b111111;
		#0.002;
		opcode = 6'b000000;
		#0.002;
		opcode = 6'b000001;
		#0.002;
		opcode = 6'b000011;
		#0.002;
		opcode = 6'b000111;
		#0.002;
		opcode = 6'b001111;
		#0.002;
		opcode = 6'b011111;
		#0.002;
		
        
		// Add stimulus here

	end
      
endmodule

