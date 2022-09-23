`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:23:08 12/26/2021 
// Design Name: 
// Module Name:    ALUSTAGE 
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
module ALUSTAGE(
    input wire [31:0] RF_A,
    input wire [31:0] RF_B,
    input wire [31:0] Immed,
    input wire ALU_Bin_sel,
    input wire [3:0] ALU_func,
    output wire [31:0] ALU_out,
	 output wire zero
	 
    );
	 wire [31:0] MUX32_Out;
	  
	//calling modules =======================================
    MUX_2_to_1 MUX32(.In0(RF_B), .In1(Immed), .Sel(ALU_Bin_sel), .Mux_Out( MUX32_Out));
	 ALU ALU_A(.A(RF_A), .B(MUX32_Out), .Op(ALU_func), .Out(ALU_out), .Zero(zero));
	//=======================================================
	
endmodule
