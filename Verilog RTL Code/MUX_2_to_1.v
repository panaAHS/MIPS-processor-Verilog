`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:43:52 12/22/2021 
// Design Name: 
// Module Name:    MUX_2_to_1 
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
module MUX_2_to_1(
    input wire [31:0] In0, In1,
	 input wire Sel,
    output wire [31:0] Mux_Out
    );
	 
	 assign Mux_Out = (Sel == 1'b0)? In0:
	                  (Sel == 1'b1)? In1:
					      11'bx; //unknown Sel

endmodule