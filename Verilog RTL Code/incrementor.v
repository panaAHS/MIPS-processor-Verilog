`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:21:06 12/22/2021 
// Design Name: 
// Module Name:    incrementor 
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
module incrementor(
	input wire [31:0] incrementor_In,
	output wire [31:0] incrementor_Out
   );
   assign incrementor_Out = incrementor_In + 32'b100; // PC + 4

endmodule
