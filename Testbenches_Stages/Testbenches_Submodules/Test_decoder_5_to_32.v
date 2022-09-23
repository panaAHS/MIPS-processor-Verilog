`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   07:07:54 12/20/2021
// Design Name:   Decoder_5_to_32
// Module Name:   /home/ise/Desktop/Project-HW1/Test_decoder_5_to_32.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder_5_to_32
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_decoder_5_to_32;

	// Inputs
	reg [4:0] Adr;

	// Outputs
	wire [31:0] DegOut;

	// Instantiate the Unit Under Test (UUT)
	Decoder_5_to_32 uut (
		.DegOut(DegOut), 
		.Adr(Adr)
	);

	initial begin
		// Initialize Inputs
		Adr = 5'b00000;
      #0.002;
		Adr = 5'b00001;
      #0.002;
		Adr = 5'b00010;
      #0.002;
		Adr = 5'b00011;
      #0.002;
		Adr = 5'b00100;
      #0.002;
		Adr = 5'b00101;
      #0.002;
		Adr = 5'b00110;
      #0.002;
		Adr = 5'b00111;
      #0.002;
		Adr = 5'b01000;
      #0.002;
		Adr = 5'b01001;
      #0.002;
		Adr = 5'b01010;
      #0.002;
		Adr = 5'b01011;
      #0.002;
		Adr = 5'b01100;
      #0.002;
		Adr = 5'b01101;
      #0.002;
		Adr = 5'b01110;
      #0.002;
		Adr = 5'b01111;
      #0.002;
		Adr = 5'b10000;
      #0.002;
		Adr = 5'b10001;
      #0.002;
		Adr = 5'b10010;
      #0.002;
		Adr = 5'b10011;
      #0.002;
		Adr = 5'b10100;
      #0.002;
		Adr = 5'b10101;
      #0.002;
		Adr = 5'b10110;
      #0.002;
		Adr = 5'b10111;
      #0.002;
		Adr = 5'b11000;
      #0.002;
		Adr = 5'b11001;
      #0.002;
		Adr = 5'b11010;
      #0.002;
		Adr = 5'b11011;
      #0.002;
		Adr = 5'b11100;
      #0.002;
		Adr = 5'b11101;
      #0.002;
		Adr = 5'b11110;
      #0.002;
		Adr = 5'b11111;
        
		// Add stimulus here

	end
      
endmodule

