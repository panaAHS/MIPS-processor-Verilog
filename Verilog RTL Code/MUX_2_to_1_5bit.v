`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:29:44 12/26/2021 
// Design Name: 
// Module Name:    MUX_2_to_1_5bit 
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
module MUX_2_to_1_5bit(
    input wire [4:0] In0, In1,
	 input wire Sel,
    output wire [4:0] Mux_Out
    );
	 
	 assign Mux_Out = (Sel == 1'b0)? In0:
	                  (Sel == 1'b1)? In1:
					      3'bx; //unknown Sel
							
endmodule
