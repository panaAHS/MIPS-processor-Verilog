`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:23:13 12/26/2021 
// Design Name: 
// Module Name:    MEMSTAGE 
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
module MEMSTAGE(

    input clk,
    input Mem_WrEn,
	 input [5:0] opcode,
    input [31:0] ALU_MEM_Addr,
    input [31:0] MEM_Dataln,
    output reg [31:0] MEM_DataOut
    );
	 
	reg [31:0] MEM_out;
	reg [31:0] RAM [1023:0];
	reg [31:0] MEM_DataInput;
	wire [31:0] MEM_In;
   
	
	always @(*)
	begin
	
	if (opcode == 6'b000011) //lb
		MEM_DataOut = {{24{1'b0}}, MEM_out[7:0]}; //ZeroFill(31downto8)
	else if((opcode == 6'b000111) || (opcode == 6'b001111) || (opcode == 6'b011111))//sb, lw, sw
		MEM_DataOut = MEM_out;
		
	if(opcode == 6'b000111) //sb 
		MEM_DataInput = {{24{1'b0}}, MEM_Dataln[7:0]}; //ZeroFill(31downto8)
	else if((opcode == 6'b000011) || (opcode == 6'b001111) || (opcode == 6'b011111)) //lb, lw, sw
		MEM_DataInput = MEM_Dataln;
	end
	
	//=============================================
	
	assign MEM_In = MEM_Dataln;
	
	//MEM RAM ==============================
	always @(posedge clk)
	begin
	if(Mem_WrEn)
		RAM[ALU_MEM_Addr[11:2]] = MEM_In;
	else
		MEM_out = RAM[ALU_MEM_Addr[11:2]];
	end 
	//=======================================
	
endmodule

