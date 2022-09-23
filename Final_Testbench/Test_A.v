`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:10:39 01/01/2022
// Design Name:   PROCESSOR
// Module Name:   /home/ise/Desktop/Project-HW1/Test_A.v
// Project Name:  Project-HW1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PROCESSOR
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test_A;

	// Inputs
	reg clock;
	reg Reset;
	// Outputs -> simulation
	wire [31:0] Instr;
   wire [31:0] Immed;
	wire [31:0] ALU_out;
	wire [31:0] MEM_out;
	wire [31:0] RF_A;
	wire [31:0] RF_B;
	wire [9:0] PC_out;
	wire PC_Sel;
	wire PC_LdEn;
	wire Sel_Instr;
	wire RF_WrEn;
	wire RF_WrData_sel;
	wire RF_B_sel;
	wire ALU_Bin_sel;
	wire Mem_WrEn;
	wire ALU_zero;
	wire [3:0] ALU_func;
	
	
	wire [4:0] Out_CurrState;
	wire [31:0] Reg_out0, Reg_out1, Reg_out2, Reg_out3, Reg_out4, Reg_out5, Reg_out6, Reg_out7, Reg_out8, Reg_out9, Reg_out10, Reg_out11, Reg_out12, Reg_out13, Reg_out14, Reg_out15, Reg_out16, Reg_out17,  Reg_out18, Reg_out19, Reg_out20;
   wire [31:0] MEM_2, MEM_3;
	
	// Instantiate the Unit Under Test (UUT)
	PROCESSOR uut (
		.clock(clock), 
		.Reset(Reset)
	);

	always begin 
	clock = 0; //Clock
	#0.001;
	clock = 1;
	#0.001;
	end
	initial
		  begin
		  Reset = 1'b1;
		  #0.0005;
		  Reset = 1'b0;
		  end
	
	//internal signals
	assign Instr= uut.Instr;
	assign Immed = uut.DataP.Immed;
	assign ALU_out = uut.DataP.ALU_out;
	assign MEM_out = uut.DataP.MEM_out;
	assign RF_A = uut.DataP.RF_A;
	assign RF_B = uut.DataP.RF_B;
	assign PC_out = uut.DataP.IF.PC_Out;
	assign PC_Sel = uut.DataP.IF.PC_sel;
	assign PC_LdEn = uut.DataP.IF.PC_LdEn;
	assign Sel_Instr = uut.Sel_Instr;
	assign RF_WrEn = uut.DataP.DEC.RF_WrEn;
	assign RF_WrData_sel = uut.DataP.DEC.RF_WrData_sel;
	assign RF_B_sel = uut.DataP.DEC.RF_B_sel;
	assign ALU_Bin_sel = uut.DataP.ALU.ALU_Bin_sel;
	assign Mem_WrEn =  uut.DataP.MEM.Mem_WrEn;
	assign ALU_zero =  uut.DataP.ALU.zero;
	assign ALU_func = uut.DataP.ALU.ALU_func;
	
	//State
   assign Out_CurrState = uut.CTRL.currState;
	
	//Registers
	assign Reg_out0 = uut.DataP.DEC.RF.Reg_Out[0];
	assign Reg_out1 = uut.DataP.DEC.RF.Reg_Out[1];
	assign Reg_out2 = uut.DataP.DEC.RF.Reg_Out[2];
	assign Reg_out3 = uut.DataP.DEC.RF.Reg_Out[3];
	assign Reg_out4 = uut.DataP.DEC.RF.Reg_Out[4];
	assign Reg_out5 = uut.DataP.DEC.RF.Reg_Out[5];
	assign Reg_out6 = uut.DataP.DEC.RF.Reg_Out[6];
	assign Reg_out7 = uut.DataP.DEC.RF.Reg_Out[7];
	assign Reg_out8 = uut.DataP.DEC.RF.Reg_Out[8];
	assign Reg_out9 = uut.DataP.DEC.RF.Reg_Out[9];
	assign Reg_out10 = uut.DataP.DEC.RF.Reg_Out[10];
	assign Reg_out11 = uut.DataP.DEC.RF.Reg_Out[11];
	assign Reg_out12 = uut.DataP.DEC.RF.Reg_Out[12];
	assign Reg_out13 = uut.DataP.DEC.RF.Reg_Out[13];
	assign Reg_out14 = uut.DataP.DEC.RF.Reg_Out[14];
	assign Reg_out15 = uut.DataP.DEC.RF.Reg_Out[15];
	assign Reg_out16 = uut.DataP.DEC.RF.Reg_Out[16];
	assign Reg_out17 = uut.DataP.DEC.RF.Reg_Out[17];
	assign Reg_out18 = uut.DataP.DEC.RF.Reg_Out[18];
	assign Reg_out19 = uut.DataP.DEC.RF.Reg_Out[19];
	assign Reg_out20 = uut.DataP.DEC.RF.Reg_Out[20];

   //mem
	assign MEM_2 = uut.DataP.MEM.RAM[2];
	assign MEM_3 = uut.DataP.MEM.RAM[3];
	
	//display ===================
	always @(*)
	begin
	$display("Reg_out0 = %d", uut.DataP.DEC.RF.Reg_Out[0]);
	$display("Reg_out1 = %d", uut.DataP.DEC.RF.Reg_Out[1]);
	$display("Reg_out2 = %d", uut.DataP.DEC.RF.Reg_Out[2]);
	$display("Reg_out3 = %d", uut.DataP.DEC.RF.Reg_Out[3]);
	$display("Reg_out4 = %d", uut.DataP.DEC.RF.Reg_Out[4]);
	$display("Reg_out5(binary) = %b", uut.DataP.DEC.RF.Reg_Out[5]);
	$display("Reg_out6 = %d", uut.DataP.DEC.RF.Reg_Out[6]);
	$display("Reg_out7 = %d", uut.DataP.DEC.RF.Reg_Out[7]);
	$display("Reg_out8 = %d", uut.DataP.DEC.RF.Reg_Out[8]);
	$display("Reg_out9 = %d", uut.DataP.DEC.RF.Reg_Out[9]);
	$display("Reg_out10 = %d", uut.DataP.DEC.RF.Reg_Out[10]);
	$display("Reg_out11 = %d", uut.DataP.DEC.RF.Reg_Out[11]);
	$display("Reg_out12 = %d", uut.DataP.DEC.RF.Reg_Out[12]);
	$display("Reg_out13 = %d", uut.DataP.DEC.RF.Reg_Out[13]);
	$display("Reg_out14 = %d", uut.DataP.DEC.RF.Reg_Out[14]);
	$display("Reg_out15 = %d", uut.DataP.DEC.RF.Reg_Out[15]);
	$display("Reg_out16 = %d", uut.DataP.DEC.RF.Reg_Out[16]);
	$display("Reg_out17 = %d", uut.DataP.DEC.RF.Reg_Out[17]);
	$display("Reg_out18 = %d", uut.DataP.DEC.RF.Reg_Out[18]);
	$display("Reg_out19 = %d", uut.DataP.DEC.RF.Reg_Out[19]);
	$display("Reg_out20 = %d", uut.DataP.DEC.RF.Reg_Out[20]);
	$display("MEM_2 (binary) = %b", uut.DataP.MEM.RAM[2]);
   $display("MEM_3 = %d", uut.DataP.MEM.RAM[3]);
	end
	

      
endmodule

