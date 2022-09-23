`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:28:04 12/19/2021
// Design Name:   MUX
// Module Name:   /home/ise/Desktop/Project-HW1/Test_MUX.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_MUX;

	// Inputs
	reg [31:0] In0;
	reg [31:0] In1;
	reg [31:0] In2;
	reg [31:0] In3;
	reg [31:0] In4;
	reg [31:0] In5;
	reg [31:0] In6;
	reg [31:0] In7;
	reg [31:0] In8;
	reg [31:0] In9;
	reg [31:0] In10;
	reg [31:0] In11;
	reg [31:0] In12;
	reg [31:0] In13;
	reg [31:0] In14;
	reg [31:0] In15;
	reg [31:0] In16;
	reg [31:0] In17;
	reg [31:0] In18;
	reg [31:0] In19;
	reg [31:0] In20;
	reg [31:0] In21;
	reg [31:0] In22;
	reg [31:0] In23;
	reg [31:0] In24;
	reg [31:0] In25;
	reg [31:0] In26;
	reg [31:0] In27;
	reg [31:0] In28;
	reg [31:0] In29;
	reg [31:0] In30;
	reg [31:0] In31;
	reg [4:0] Sel;

	// Outputs
	wire [31:0] F;

	// Instantiate the Unit Under Test (UUT)
	MUX uut (
		.In0(In0), 
		.In1(In1), 
		.In2(In2), 
		.In3(In3), 
		.In4(In4), 
		.In5(In5), 
		.In6(In6), 
		.In7(In7), 
		.In8(In8), 
		.In9(In9), 
		.In10(In10), 
		.In11(In11), 
		.In12(In12), 
		.In13(In13), 
		.In14(In14), 
		.In15(In15), 
		.In16(In16), 
		.In17(In17), 
		.In18(In18), 
		.In19(In19), 
		.In20(In20), 
		.In21(In21), 
		.In22(In22), 
		.In23(In23), 
		.In24(In24), 
		.In25(In25), 
		.In26(In26), 
		.In27(In27), 
		.In28(In28), 
		.In29(In29), 
		.In30(In30), 
		.In31(In31), 
		.Sel(Sel), 
		.F(F)
	);
	
	initial begin
		// Initialize Inputs
		In0 = 32'b0;
		In1 = 32'b1;
		In2 = 32'b10;
		In3 = 32'b11;
		In4 = 32'b100;
		In5 = 32'b101;
		In6 = 32'b110;
		In7 = 32'b111;
		In8 = 32'b1000;
		In9 = 32'b1001;
		In10 = 32'b1010;
		In11 = 32'b1011;
		In12 = 32'b1100;
		In13 = 32'b1101;
		In14 = 32'b1110;
		In15 = 32'b1111;
		In16 = 32'b10000;
		In17 = 32'b10001;
		In18 = 32'b10010;
		In19 = 32'b10011;
		In20 = 32'b10100;
		In21 = 32'b10101;
		In22 = 32'b10110;
		In23 = 32'b10111;
		In24 = 32'b11000;
		In25 = 32'b11001;
		In26 = 32'b11010;
		In27 = 32'b11011;
		In28 = 32'b11100;
		In29 = 32'b11101;
		In30 = 32'b11110;
		In31 = 32'b11111;
		
		Sel = 5'b0;
		#0.002;
		Sel = 5'b1;
		#0.002;
		Sel = 5'b10;
		#0.002;
		Sel = 5'b11;
		#0.002;
		Sel = 5'b100;
		#0.002;
		Sel = 5'b101;
		#0.002;
		Sel = 5'b110;
		#0.002;
		Sel = 5'b111;
		#0.002;
		Sel = 5'b1000;
		#0.002;
		Sel = 5'b1001;
		#0.002;
		Sel = 5'b1010;
		#0.002;
		Sel = 5'b1011;
		#0.002;
		Sel = 5'b1100;
		#0.002;
	
		
	end
      
endmodule

