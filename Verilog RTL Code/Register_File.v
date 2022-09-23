`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07:18:26 12/20/2021 
// Design Name: 
// Module Name:    Register_File 
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
module Register_File(
    input [4:0] Ard1,
    input [4:0] Ard2,
    input [4:0] Awr,
    output [31:0] Dout1,
    output [31:0] Dout2, 
    input [31:0] Din,
    input WrEn,
    input Clk,reset
	
    );
	 wire [31:0] Decout;
	 wire [31:0] AND_Out;
	 wire  [31:0] Reg_Out[0:31]; 
	 
	
	 
	 Decoder_5_to_32 decoder(.Adr(Awr), .DegOut( Decout));
	
	assign AND_Out[0] = Decout[0] & WrEn & 0;
	assign AND_Out[1] = Decout[1] & WrEn;
	assign AND_Out[2] = Decout[2] & WrEn;
	assign AND_Out[3] = Decout[3] & WrEn;
	assign AND_Out[4] = Decout[4] & WrEn;
	assign AND_Out[5] = Decout[5] & WrEn;
	assign AND_Out[6] = Decout[6] & WrEn;
	assign AND_Out[7] = Decout[7] & WrEn;
	assign AND_Out[8] = Decout[8] & WrEn;
	assign AND_Out[9] = Decout[9] & WrEn;
	assign AND_Out[10] = Decout[10] & WrEn;
	assign AND_Out[11] = Decout[11] & WrEn;
	assign AND_Out[12] = Decout[12] & WrEn;
	assign AND_Out[13] = Decout[13] & WrEn;
	assign AND_Out[14] = Decout[14] & WrEn;
	assign AND_Out[15] = Decout[15] & WrEn;
	assign AND_Out[16] = Decout[16] & WrEn;
	assign AND_Out[17] = Decout[17] & WrEn;
	assign AND_Out[18] = Decout[18] & WrEn;
	assign AND_Out[19] = Decout[19] & WrEn;
	assign AND_Out[20] = Decout[20] & WrEn;
	assign AND_Out[21] = Decout[21] & WrEn;
	assign AND_Out[22] = Decout[22] & WrEn;
	assign AND_Out[23] = Decout[23] & WrEn;
	assign AND_Out[24] = Decout[24] & WrEn;
	assign AND_Out[25] = Decout[25] & WrEn;
	assign AND_Out[26] = Decout[26] & WrEn;
	assign AND_Out[27] = Decout[27] & WrEn;
	assign AND_Out[28] = Decout[28] & WrEn;
	assign AND_Out[29] = Decout[29] & WrEn;
	assign AND_Out[30] = Decout[30] & WrEn;
	assign AND_Out[31] = Decout[31] & WrEn;

	
	Register REgister_0(.CLK(Clk), .WE(AND_Out[0]), .Data(Din), .Dout(Reg_Out[0]), .reset(reset));
	Register REgister_1(.CLK(Clk), .WE(AND_Out[1]), .Data(Din), .Dout(Reg_Out[1]), .reset(reset));
	Register REgister_2(.CLK(Clk), .WE(AND_Out[2]), .Data(Din), .Dout(Reg_Out[2]), .reset(reset));
	Register REgister_3(.CLK(Clk), .WE(AND_Out[3]), .Data(Din), .Dout(Reg_Out[3]), .reset(reset));
	Register REgister_4(.CLK(Clk), .WE(AND_Out[4]), .Data(Din), .Dout(Reg_Out[4]), .reset(reset));
	Register REgister_5(.CLK(Clk), .WE(AND_Out[5]), .Data(Din), .Dout(Reg_Out[5]), .reset(reset));
	Register REgister_6(.CLK(Clk), .WE(AND_Out[6]), .Data(Din), .Dout(Reg_Out[6]), .reset(reset));
	Register REgister_7(.CLK(Clk), .WE(AND_Out[7]), .Data(Din), .Dout(Reg_Out[7]), .reset(reset));
	Register REgister_8(.CLK(Clk), .WE(AND_Out[8]), .Data(Din), .Dout(Reg_Out[8]), .reset(reset));
	Register REgister_9(.CLK(Clk), .WE(AND_Out[9]), .Data(Din), .Dout(Reg_Out[9]), .reset(reset));
	Register REgister_10(.CLK(Clk), .WE(AND_Out[10]), .Data(Din), .Dout(Reg_Out[10]), .reset(reset));
	Register REgister_11(.CLK(Clk), .WE(AND_Out[11]), .Data(Din), .Dout(Reg_Out[11]), .reset(reset));
	Register REgister_12(.CLK(Clk), .WE(AND_Out[12]), .Data(Din), .Dout(Reg_Out[12]), .reset(reset));
	Register REgister_13(.CLK(Clk), .WE(AND_Out[13]), .Data(Din), .Dout(Reg_Out[13]), .reset(reset));
	Register REgister_14(.CLK(Clk), .WE(AND_Out[14]), .Data(Din), .Dout(Reg_Out[14]), .reset(reset));
	Register REgister_15(.CLK(Clk), .WE(AND_Out[15]), .Data(Din), .Dout(Reg_Out[15]), .reset(reset));
	Register REgister_16(.CLK(Clk), .WE(AND_Out[16]), .Data(Din), .Dout(Reg_Out[16]), .reset(reset));
	Register REgister_17(.CLK(Clk), .WE(AND_Out[17]), .Data(Din), .Dout(Reg_Out[17]), .reset(reset));
	Register REgister_18(.CLK(Clk), .WE(AND_Out[18]), .Data(Din), .Dout(Reg_Out[18]), .reset(reset));
	Register REgister_19(.CLK(Clk), .WE(AND_Out[19]), .Data(Din), .Dout(Reg_Out[19]), .reset(reset));
	Register REgister_20(.CLK(Clk), .WE(AND_Out[20]), .Data(Din), .Dout(Reg_Out[20]), .reset(reset));
	Register REgister_21(.CLK(Clk), .WE(AND_Out[21]), .Data(Din), .Dout(Reg_Out[21]), .reset(reset));
	Register REgister_22(.CLK(Clk), .WE(AND_Out[22]), .Data(Din), .Dout(Reg_Out[22]), .reset(reset));
	Register REgister_23(.CLK(Clk), .WE(AND_Out[23]), .Data(Din), .Dout(Reg_Out[23]), .reset(reset));
	Register REgister_24(.CLK(Clk), .WE(AND_Out[24]), .Data(Din), .Dout(Reg_Out[24]), .reset(reset));
	Register REgister_25(.CLK(Clk), .WE(AND_Out[25]), .Data(Din), .Dout(Reg_Out[25]), .reset(reset));
	Register REgister_26(.CLK(Clk), .WE(AND_Out[26]), .Data(Din), .Dout(Reg_Out[26]), .reset(reset));
	Register REgister_27(.CLK(Clk), .WE(AND_Out[27]), .Data(Din), .Dout(Reg_Out[27]), .reset(reset));
	Register REgister_28(.CLK(Clk), .WE(AND_Out[28]), .Data(Din), .Dout(Reg_Out[28]), .reset(reset));
	Register REgister_29(.CLK(Clk), .WE(AND_Out[29]), .Data(Din), .Dout(Reg_Out[29]), .reset(reset));
	Register REgister_30(.CLK(Clk), .WE(AND_Out[30]), .Data(Din), .Dout(Reg_Out[30]), .reset(reset));
	Register REgister_31(.CLK(Clk), .WE(AND_Out[31]), .Data(Din), .Dout(Reg_Out[31]), .reset(reset));
	 
	MUX MUX_1(.In0(Reg_Out[0]), .In1(Reg_Out[1]), .In2(Reg_Out[2]), .In3(Reg_Out[3]), .In4(Reg_Out[4]), .In5(Reg_Out[5]), .In6(Reg_Out[6]), .In7(Reg_Out[7]), .In8(Reg_Out[8]), .In9(Reg_Out[9]),  .In10(Reg_Out[10]), .In11(Reg_Out[11]), .In12(Reg_Out[12]), .In13(Reg_Out[13]), .In14(Reg_Out[14]), .In15(Reg_Out[15]), .In16(Reg_Out[16]), .In17(Reg_Out[17]), .In18(Reg_Out[18]), .In19(Reg_Out[19]), .In20(Reg_Out[20]), .In21(Reg_Out[21]), .In22(Reg_Out[22]), .In23(Reg_Out[23]), .In24(Reg_Out[24]), .In25(Reg_Out[25]), .In26(Reg_Out[26]), .In27(Reg_Out[27]), .In28(Reg_Out[28]), .In29(Reg_Out[29]), .In30(Reg_Out[30]), .In31(Reg_Out[31]), .Sel(Ard1), .F(Dout1));
   MUX MUX_2(.In0(Reg_Out[0]), .In1(Reg_Out[1]), .In2(Reg_Out[2]), .In3(Reg_Out[3]), .In4(Reg_Out[4]), .In5(Reg_Out[5]), .In6(Reg_Out[6]), .In7(Reg_Out[7]), .In8(Reg_Out[8]), .In9(Reg_Out[9]),  .In10(Reg_Out[10]), .In11(Reg_Out[11]), .In12(Reg_Out[12]), .In13(Reg_Out[13]), .In14(Reg_Out[14]), .In15(Reg_Out[15]), .In16(Reg_Out[16]), .In17(Reg_Out[17]), .In18(Reg_Out[18]), .In19(Reg_Out[19]), .In20(Reg_Out[20]), .In21(Reg_Out[21]), .In22(Reg_Out[22]), .In23(Reg_Out[23]), .In24(Reg_Out[24]), .In25(Reg_Out[25]), .In26(Reg_Out[26]), .In27(Reg_Out[27]), .In28(Reg_Out[28]), .In29(Reg_Out[29]), .In30(Reg_Out[30]), .In31(Reg_Out[31]), .Sel(Ard2), .F(Dout2));
   
	
endmodule
