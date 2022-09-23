`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:21:37 12/20/2021
// Design Name:   ALU
// Module Name:   /home/ise/Desktop/Project-HW1/TEST_ALU.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TEST_ALU;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] Op;

	// Outputs
	wire [31:0] Out;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.Out(Out), 
		.Zero(Zero), 
		.A(A), 
		.B(B), 
		.Op(Op)
	);

	initial begin
		// Initialize Inputs
		A = 32'b0;
		B = 32'b0;
		Op = 4'b0000;
		#0.002;
		Op = 4'b0001;
		#0.002;
		Op = 4'b0010;
		#0.002;
		Op = 4'b0011;
		#0.002;
		Op = 4'b0100;
		#0.002;
		Op = 4'b1000;
		#0.002;
		Op = 4'b1010;
		#0.002;
		Op = 4'b1001;
		#0.002;
		Op = 4'b1100;
		#0.004;
		Op = 4'b1101;
		#0.004;
		A = 32'b1;
		B = 32'b0;
		Op = 4'b0000;
		#0.004;
		Op = 4'b0001;
		#0.004;
		Op = 4'b0010;
		#0.004;
		Op = 4'b0011;
		#0.004;
		Op = 4'b0100;
		#0.004;
		Op = 4'b1000;
		#0.004;
		Op = 4'b1010;
		#0.004;
		Op = 4'b1001;
		#0.004;
		Op = 4'b1100;
		#0.004;
		Op = 4'b1101;
		#0.004;
		A = 32'b11111111111111111111111111111111;
		B = 32'b0;
		Op = 4'b0000;
		#0.004;
		Op = 4'b0001;
		#0.004;
		Op = 4'b0010;
		#0.004;
		Op = 4'b0011;
		#0.004;
		Op = 4'b0100;
		#0.004;
		Op = 4'b1000;
		#0.004;
		Op = 4'b1010;
		#0.004;
		Op = 4'b1001;
		#0.004;
		Op = 4'b1100;
		#0.004;
		Op = 4'b1101;
		#0.004;
		A = 32'b101010111000111;
		B = 32'b10100000000000010101;
		Op = 4'b0000;
		#0.004;
		Op = 4'b0001;
		#0.004;
		Op = 4'b0010;
		#0.004;
		Op = 4'b0011;
		#0.004;
		Op = 4'b0100;
		#0.004;
		Op = 4'b1000;
		#0.004;
		Op = 4'b1010;
		#0.004;
		Op = 4'b1001;
		#0.004;
		Op = 4'b1100;
		#0.004;
		Op = 4'b1101;
		#0.004;
		A = 32'd1000000;
		B = 32'd1000000;
		Op = 4'b0000;
		#0.004;
		Op = 4'b0001;
		#0.002;
		Op = 4'b0010;
		#0.002;
		Op = 4'b0011;
		#0.002;
		Op = 4'b0100;
		#0.002;
		Op = 4'b1000;
		#0.002;
		Op = 4'b1010;
		#0.002;
		Op = 4'b1001;
		#0.002;
		Op = 4'b1100;
		#0.002;
		Op = 4'b1101;
		#0.002;
		A = 32'b0;
		B = 32'b11111111111111111111111111111111111111111111111111111;
		Op = 4'b0000;
		#0.002;
		Op = 4'b0001;
		#0.002;
		Op = 4'b0010;
		#0.002;
		Op = 4'b0011;
		#0.002;
		Op = 4'b0100;
		#0.002;
		Op = 4'b1000;
		#0.002;
		Op = 4'b1010;
		#0.002;
		Op = 4'b1001;
		#0.002;
		Op = 4'b1100;
		#0.002;
		Op = 4'b1101;
		#0.002;
		
		

	end
      
endmodule
