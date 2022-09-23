`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:25:28 12/19/2021 
// Design Name: 
// Module Name:    MUX 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX(
    input wire [31:0] In0, In1, In2, In3, In4, In5, In6, In7, In8, In9, In10, In11, In12, In13, In14, In15, In16, In17, In18, In19, In20, In21, In22, In23, In24, In25, In26, In27, In28, In29, In30, In31,
    input wire [4:0] Sel,
    output wire [31:0] F  //MUX output
    );
	 
	 assign F = (Sel == 5'b00000)? In0:
	            (Sel == 5'b00001)? In1:
					(Sel == 5'b00010)? In2:
					(Sel == 5'b00011)? In3:
					(Sel == 5'b00100)? In4:
					(Sel == 5'b00101)? In5:
					(Sel == 5'b00110)? In6:
					(Sel == 5'b00111)? In7:
					(Sel == 5'b01000)? In8:
					(Sel == 5'b01001)? In9:
					(Sel == 5'b01010)? In10:
					(Sel == 5'b01011)? In11:
					(Sel == 5'b01100)? In12:
					(Sel == 5'b01101)? In13:
					(Sel == 5'b01110)? In14:
					(Sel == 5'b01111)? In15:
					(Sel == 5'b10000)? In16:
					(Sel == 5'b10001)? In17:
					(Sel == 5'b10010)? In18:
					(Sel == 5'b10011)? In19:
					(Sel == 5'b10100)? In20:
					(Sel == 5'b10101)? In21:
					(Sel == 5'b10110)? In22:
					(Sel == 5'b10111)? In23:
					(Sel == 5'b11000)? In24:
					(Sel == 5'b11001)? In25:
					(Sel == 5'b11010)? In26:
					(Sel == 5'b11011)? In27:
					(Sel == 5'b11100)? In28:
					(Sel == 5'b11101)? In29:
					(Sel == 5'b11110)? In30:
					(Sel == 5'b11111)? In31:
					5'bx; //unknown select
					
					
		
endmodule
