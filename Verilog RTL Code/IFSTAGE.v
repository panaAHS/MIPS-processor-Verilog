`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:23:04 12/22/2021 
// Design Name: 
// Module Name:    IFSTAGE 
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
module IFSTAGE(
	 input wire clk,
	 output reg [31:0] Instr, //dout
	 input wire [31:0] PC_Immed,
    input wire PC_sel,
    input wire PC_LdEn,
    input wire Reset
	 );
	wire [9:0] addr;
	
	wire [31:0] incrementor4_Out, incrementor_Out, Mux_IF_Out, PC_Out;
	
	
	// IMEM - ROM =====================================
	reg [31:0] ROM [1023:0];    
	
	initial
	begin
	$readmemb("rom.data", ROM);
	end
	always @(posedge  clk)
	begin
	Instr <=  ROM[addr];  //dout 
	
	end
	//======================================
	
	
	//calling modules===================================
   
	 incrementor_PC_immediate inc0 (.In1(PC_Immed), .In2(incrementor4_Out), .Out(incrementor_Out));
	 	 
	 Register PC(.CLK(clk), .WE(PC_LdEn), .Data(Mux_IF_Out), .Dout(PC_Out), .reset(Reset));
	 
	 incrementor inc4 (.incrementor_In(PC_Out), .incrementor_Out(incrementor4_Out));
	 
	 MUX_2_to_1 MUX_IF (.In0(incrementor4_Out), .In1(incrementor_Out), .Sel(PC_sel), .Mux_Out(Mux_IF_Out));	 
	 
	//============================== 
	assign addr = PC_Out[11:2]; 
	 
endmodule

