`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:06:13 12/20/2021 
// Design Name: 
// Module Name:    Decoder_5_to_32 
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
module Decoder_5_to_32(
    output wire [31:0] DegOut, //Decoder Output
		input wire [4:0] Adr); // Adr=Address of register
		
		
		assign DegOut[0] = ~Adr[4] & ~Adr[3] & ~Adr[2] & ~Adr[1] & ~Adr[0]; //00000
		assign DegOut[1] = ~Adr[4] & ~Adr[3] & ~Adr[2] & ~Adr[1] &  Adr[0]; //00001
		assign DegOut[2] = ~Adr[4] & ~Adr[3] & ~Adr[2] &  Adr[1] & ~Adr[0]; //00010
		assign DegOut[3] = ~Adr[4] & ~Adr[3] & ~Adr[2] &  Adr[1] &  Adr[0]; //00011
		assign DegOut[4] = ~Adr[4] & ~Adr[3] &  Adr[2] & ~Adr[1] & ~Adr[0]; //00100
		assign DegOut[5] = ~Adr[4] & ~Adr[3] &  Adr[2] & ~Adr[1] &  Adr[0]; //00101
		assign DegOut[6] = ~Adr[4] & ~Adr[3] &  Adr[2] &  Adr[1] & ~Adr[0]; //00110
		assign DegOut[7] = ~Adr[4] & ~Adr[3] &  Adr[2] &  Adr[1] &  Adr[0]; //00111
		assign DegOut[8] = ~Adr[4] &  Adr[3] & ~Adr[2] & ~Adr[1] & ~Adr[0]; //01000
		assign DegOut[9] = ~Adr[4] &  Adr[3] & ~Adr[2] & ~Adr[1] &  Adr[0]; //01001
		assign DegOut[10] = ~Adr[4] &  Adr[3] & ~Adr[2] &  Adr[1] & ~Adr[0]; //01010
		assign DegOut[11] = ~Adr[4] &  Adr[3] & ~Adr[2] &  Adr[1] &  Adr[0]; //01011
		assign DegOut[12] = ~Adr[4] &  Adr[3] &  Adr[2] & ~Adr[1] & ~Adr[0]; //01100
		assign DegOut[13] = ~Adr[4] &  Adr[3] &  Adr[2] & ~Adr[1] &  Adr[0]; //01101
		assign DegOut[14] = ~Adr[4] &  Adr[3] &  Adr[2] &  Adr[1] & ~Adr[0]; //01110
		assign DegOut[15] = ~Adr[4] &  Adr[3] &  Adr[2] &  Adr[1] &  Adr[0]; //01111
		assign DegOut[16] =  Adr[4] & ~Adr[3] & ~Adr[2] & ~Adr[1] & ~Adr[0]; //10000
		assign DegOut[17] =  Adr[4] & ~Adr[3] & ~Adr[2] & ~Adr[1] &  Adr[0]; //10001
		assign DegOut[18] =  Adr[4] & ~Adr[3] & ~Adr[2] &  Adr[1] & ~Adr[0]; //10010
		assign DegOut[19] =  Adr[4] & ~Adr[3] & ~Adr[2] &  Adr[1] &  Adr[0]; //10011
		assign DegOut[20] =  Adr[4] & ~Adr[3] &  Adr[2] & ~Adr[1] & ~Adr[0]; //10100
		assign DegOut[21] =  Adr[4] & ~Adr[3] &  Adr[2] & ~Adr[1] &  Adr[0]; //10101
		assign DegOut[22] =  Adr[4] & ~Adr[3] &  Adr[2] &  Adr[1] & ~Adr[0]; //10110
		assign DegOut[23] =  Adr[4] & ~Adr[3] &  Adr[2] &  Adr[1] &  Adr[0]; //10111
		assign DegOut[24] =  Adr[4] &  Adr[3] & ~Adr[2] & ~Adr[1] & ~Adr[0]; //11000
		assign DegOut[25] =  Adr[4] &  Adr[3] & ~Adr[2] & ~Adr[1] &  Adr[0]; //11001
		assign DegOut[26] =  Adr[4] &  Adr[3] & ~Adr[2] &  Adr[1] & ~Adr[0]; //11010
		assign DegOut[27] =  Adr[4] &  Adr[3] & ~Adr[2] &  Adr[1] &  Adr[0]; //11011
		assign DegOut[28] =  Adr[4] &  Adr[3] &  Adr[2] & ~Adr[1] & ~Adr[0]; //11100
		assign DegOut[29] =  Adr[4] &  Adr[3] &  Adr[2] & ~Adr[1] &  Adr[0]; //11101
		assign DegOut[30] =  Adr[4] &  Adr[3] &  Adr[2] &  Adr[1] & ~Adr[0]; //11110
		assign DegOut[31] =  Adr[4] &  Adr[3] &  Adr[2] &  Adr[1] &  Adr[0]; //11111


endmodule
