`timescale 1ns / 1ps
`default_nettype none
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:39:01 12/26/2021 
// Design Name: 
// Module Name:    DECSTAGE 
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


module DECSTAGE(
    input wire [31:0] Instr,
    input wire RF_WrEn,
    input wire [31:0] ALU_out,
    input  wire [31:0] MEM_out,
    input wire RF_WrData_sel,
    input wire RF_B_sel,
    input wire Clk, reset,
    output wire[31:0] Immed,
    output wire [31:0] RF_A,
    output wire [31:0] RF_B
    );
	  wire [31:0] Write_data;
	  wire [4:0] Read_register2;
	  
	  
	  
	 //calling modules =======================================
	 MUX_2_to_1 MUX32bit (.Sel(RF_WrData_sel), .In0(ALU_out), .In1(MEM_out), .Mux_Out(Write_data));
   
    MUX_2_to_1_5bit MUX5bit(.In0(Instr[15:11]), .In1(Instr[20:16]), .Sel(RF_B_sel), .Mux_Out(Read_register2));
   
	 Register_File  RF(.Clk(Clk), .reset(reset), .WrEn(RF_WrEn), .Dout1(RF_A), .Dout2(RF_B), .Ard1(Instr[25:21]), .Ard2(Read_register2),.Awr(Instr[20:16]), .Din(Write_data));
    //=======================================================
    
    //cloud==============================	 
	 Cloud cl(.cloud_instr(Instr[15:0]), .opcode(Instr[31:26]), .cloud_out(Immed));
	//===================================
	
endmodule

