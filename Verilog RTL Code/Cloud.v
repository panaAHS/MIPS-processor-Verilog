`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  
// 
// Create Date:    18:12:51 12/28/2021 
// Design Name: 
// Module Name:    Cloud 
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
module Cloud(
	input wire [15:0] cloud_instr,
	input wire [5:0] opcode,
	output reg [31:0] cloud_out
    );
	 always@(*)
	 begin
	 if (opcode == 6'b111000)  //li 
		cloud_out = {{16{cloud_instr[15]}}, cloud_instr};
	else if (opcode == 6'b111001) //lui
		cloud_out = {cloud_instr, {16{1'b0}}};
	else if (opcode == 6'b110000) //addi
		cloud_out = {{16{cloud_instr[15]}}, cloud_instr};
	else if (opcode == 6'b110010) //andi
		cloud_out = {{16{1'b0}}, cloud_instr};
   else if (opcode == 6'b110011) //ori
		cloud_out = {{16{1'b0}}, cloud_instr};
	else if (opcode == 6'b111111) //b
		cloud_out = {{14{cloud_instr[15]}}, cloud_instr, {2{1'b0}}};
	else if (opcode == 6'b000000) //beq
		cloud_out = {{14{cloud_instr[15]}}, cloud_instr, {2{1'b0}}};
   else if (opcode == 6'b000001) //bne
		cloud_out = {{14{cloud_instr[15]}}, cloud_instr, {2{1'b0}}};
	else if (opcode == 6'b001111) //lw
		cloud_out = {{16{cloud_instr[15]}}, cloud_instr};
	else if (opcode == 6'b000111) //sb
		cloud_out = {{16{cloud_instr[15]}}, cloud_instr};
	else if (opcode == 6'b011111) //sw
		cloud_out = {{16{cloud_instr[15]}}, cloud_instr};
	else if (opcode == 6'b000011) //lb
		cloud_out = {{16{cloud_instr[15]}}, cloud_instr};
   else  
		cloud_out = 32'b0;  


  end
endmodule
