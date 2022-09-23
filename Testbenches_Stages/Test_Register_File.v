`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:24:14 12/25/2021
// Design Name:   Register_File
// Module Name:   /home/ise/Desktop/Project-HW1/Test_Register_File.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_File
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_Register_File;

	// Inputs
	reg [4:0] Ard1;
	reg [4:0] Ard2;
	reg [4:0] Awr;
	reg [31:0] Din;
	reg WrEn;
	reg Clk;
	reg reset;

	// Outputs
	wire [31:0] Dout1;
	wire [31:0] Dout2;
	//wire test;

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.Ard1(Ard1), 
		.Ard2(Ard2), 
		.Awr(Awr), 
		.Dout1(Dout1), 
		.Dout2(Dout2), 
		.Din(Din), 
		.WrEn(WrEn), 
		.Clk(Clk), 
		.reset(reset)
		//.test(test)
	);
always begin 
	Clk =0;
	#0.001;
	Clk = 1;
	#0.001;
	end
	initial begin
		// Initialize Inputs
		reset = 1;
		Din = 32'b11;
	   WrEn = 0;
		Awr = 5'b111111;
      Ard1 = 5'b11111;
		Ard2 = 5'b10000;
		#0.002;
		reset = 0;
		 WrEn = 1;
		#0.004;
		Awr = 5'b10000;
		
		/*reset = 1;
		Din = 32'b11;
	   WrEn = 0;
		Awr = 5'b11111;
      Ard1 = 5'b11111;
		Ard2 = 5'b11111;
		#0.002;
		reset =0;
	   WrEn = 1;
		Awr = 5'b11111;
      Ard1 = 5'b11111;
		Ard2 = 5'b11111;
		#0.002;
		Awr = 5'b0;
      Ard1 = 5'b0;
		Ard2 = 5'b11111;
		#0.002;
		Awr = 5'b10;
      Ard1 = 5'b10;
		Ard2 = 5'b100;
		Din = 32'b11;
		#0.002;
		reset =1;
		Ard1 = 5'b1;
		Ard2 = 5'b10;
		#0.002;
		reset = 0;
				Din = 32'b11111111111111;

		Awr = 5'b100;
		Ard1 = 5'b11;
		Ard2 = 5'b100;
		#0.002;
		Ard1 = 5'b11101;
		Ard2 = 5'b11111;
		#0.0012;
		/*
		Ard1 = 5'b111;
		Ard2 = 5'b1000;
		#0.001;
		Ard1 = 5'b1001;
		Ard2 = 5'b1010;
		#0.001;
		Ard1 = 5'b1011;
		Ard2 = 5'b1100;
		#0.001;
		Ard1 = 5'b1101;
		Ard2 = 5'b1110;
		#0.001;
		Ard1 = 5'b1111;
		Ard2 = 5'b10000;
		#0.001;
		Ard1 = 5'b10001;
		Ard2 = 5'b10010;
		#0.001;
		Ard1 = 5'b10011;
		Ard2 = 5'b10100;
		#0.001;
		Ard1 = 5'b10101;
		Ard2 = 5'b10110;
		#0.001;
		Ard1 = 5'b10110;
		Ard2 = 5'b10111;
		#0.001;
		Ard1 = 5'b11000;
		Ard2 = 5'b11001;
		#0.001;
		Ard1 = 5'b11001;
		Ard2 = 5'b11010;
		#0.001;
		Ard1 = 5'b11011;
		Ard2 = 5'b11100;
		#0.001;
		Ard1 = 5'b11101;
		Ard2 = 5'b11110;
		#0.001;
		*/
		
        
		// Add stimulus here

	end
      

      
endmodule

