`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:41:57 01/17/2022 
// Design Name: 
// Module Name:    PROCESSOR 
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
module PROCESSOR(
	 input wire clock, Reset
	);
	
	 wire PC_Sel, PC_LdEn, RF_WrEn, RF_WrData_sel, RF_B_sel, ALU_Bin_sel, Mem_WrEn, ALU_zero, Sel_Instr;
	 wire [3:0] ALU_func;
	 wire [31:0]  Instr;
	
	//colling modules =======================
   CONTROL CTRL(.Sel_Instr(Sel_Instr), .ALU_zero(ALU_zero), .clock(clock), .PC_Sel(PC_Sel), .PC_LdEn(PC_LdEn), .RF_WrEn(RF_WrEn), .RF_WrData_sel(RF_WrData_sel), .RF_B_sel(RF_B_sel), .ALU_Bin_sel(ALU_Bin_sel), .Mem_WrEn(Mem_WrEn), .ALU_func(ALU_func), .Instr(Instr));
	Datapath DataP(.Sel_Instr(Sel_Instr), .ALU_zero(ALU_zero), .clock(clock), .PC_Sel(PC_Sel), .PC_LdEn(PC_LdEn), .Reset(Reset), .RF_WrEn(RF_WrEn), .RF_WrData_sel(RF_WrData_sel), .RF_B_sel(RF_B_sel), .ALU_Bin_sel(ALU_Bin_sel), .Mem_WrEn(Mem_WrEn), .ALU_func(ALU_func), .In(Instr));
endmodule
