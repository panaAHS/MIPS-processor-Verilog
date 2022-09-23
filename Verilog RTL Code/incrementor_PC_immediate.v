`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:31 12/22/2021 
// Design Name: 
// Module Name:    incrementor_PC_immediate 
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
module incrementor_PC_immediate(
    input wire [31:0] In1,
    input wire [31:0] In2,
    output wire [31:0] Out
    );
	 
	 //assign Out = In1 + In2; 
	 assign Out = In1 + In2 - 32'b100; // PC + 4 + (Immed-4) 


endmodule
