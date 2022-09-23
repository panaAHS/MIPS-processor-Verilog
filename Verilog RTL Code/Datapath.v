`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:03:25 12/30/2021 
// Design Name: 
// Module Name:    Datapath 
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
module Datapath(
	input wire clock, PC_Sel, PC_LdEn, Reset, RF_WrEn, RF_WrData_sel, RF_B_sel, ALU_Bin_sel, Mem_WrEn, Sel_Instr,
	input wire [3:0] ALU_func,
	
	output wire ALU_zero,
	output  reg [31:0] In
	
	); 
	wire [31:0] Immed, ALU_out, MEM_out, RF_A, RF_B; 
	 //wire ALU_zero;    -> output
	 //reg [31:0] In;    -> output
	 
	 
	 //Custom Unit ==============
	 reg [31:0] Ins, Input;
    wire	 [31:0]  Instr;
	 always @(*)
	 begin
		if(Sel_Instr)
			In = Instr;
		else
			In = Input;
	 end
	 always @(posedge clock)
	 begin
			Ins <= Instr;
		   Input <= Ins;
	 end
	//===========================
		
	 //calling modules ==================================
	 IFSTAGE IF(.clk(clock), .Instr(Instr), .PC_Immed(Immed), .PC_sel(PC_Sel), .PC_LdEn(PC_LdEn), .Reset(Reset));
	 DECSTAGE DEC(.Instr(In), .RF_WrEn(RF_WrEn), .ALU_out(ALU_out), .MEM_out(MEM_out), .RF_WrData_sel(RF_WrData_sel), .RF_B_sel(RF_B_sel), .Clk(clock), .reset(Reset), .Immed(Immed), .RF_A(RF_A), .RF_B(RF_B));
    ALUSTAGE ALU(.RF_A(RF_A), .RF_B(RF_B), .Immed(Immed), .ALU_Bin_sel(ALU_Bin_sel), .ALU_func(ALU_func), .ALU_out(ALU_out), .zero(ALU_zero));
    MEMSTAGE MEM(.clk(clock), .Mem_WrEn(Mem_WrEn), .opcode(Instr[31:26]), .ALU_MEM_Addr(ALU_out), .MEM_Dataln(RF_B), .MEM_DataOut(MEM_out));
	 //==================================================
endmodule
