`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    04:17:26 12/30/2021 
// Design Name: 
// Module Name:    CONTROL 
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
module CONTROL(
   output reg  PC_Sel, PC_LdEn, RF_WrEn, RF_WrData_sel, RF_B_sel, ALU_Bin_sel, Mem_WrEn, Sel_Instr,
	output reg [3:0] ALU_func,
	input wire [31:0] Instr, 
	input wire clock, ALU_zero 
	 );
	 
     	wire [5:0] op;
		assign op = Instr[31:26];
      

        parameter [4:0]            // symbolic constants for state encoding
	    i_fetch    = 5'b0001,  
	    decode_rr  = 5'b0010,
	    mem_addr   = 5'b0011,
		 mem_wr = 5'b0100,
		 mem_rd = 5'b0101,
	    alu_exec   = 5'b0111, 
		 alu_wb   = 5'b1000,  
		 alu_li = 5'b1001, 
		 alu_i = 5'b1010, 
		 branch = 5'b1110, 
		 nop = 5'b0,
		 nop2 = 5'b1100,
		 nop3 = 5'b1101,
		 nop4 = 5'b1111, 
		 change_state_beq_bne = 5'b110,
		 change_state = 5'b10100,
		 change_state2 = 5'b10101,
		 decode_bb_alu_sub = 5'b10001,
		 alu_sub = 5'b10011;

        reg  [4:0] currState;      // current State: sequential logic
        reg  [4:0] nxtState;       // next State: output of comb. logic
	                           
		   // state register
        always @(posedge clock) begin
					
                currState <= nxtState;
					 
					 
        end

        // define nxtState as a function of currState and op:
        always @(currState or op) begin  // whenever any input changes:
					
		  	
		                  case (currState)
		
		    i_fetch:      
			               if(Instr == 32'b0)
									nxtState <= nop;
							   
								else if (op == 6'b111111)
								   nxtState <= branch;
								else if (((op == 6'b0) && (Instr != 32'b0)) || (op == 6'b1))
								   nxtState <= decode_bb_alu_sub;
								else
									nxtState <= decode_rr;
			 nop:          
			               if (Instr == 32'b0)
									nxtState <=  nop2;
								
			 nop2:        
			              
							   nxtState <=  nop3;
		    nop3: 
			 
			               nxtState <= i_fetch;
									
		    decode_rr:   
			               
								if ((op == 6'b111000) || (op == 6'b111001))
									nxtState <= alu_li;
								else if ((op == 6'b100000))
									nxtState <= alu_exec;
								else if((op == 6'b110000) || (op == 6'b110010) || (op == 6'b110011))
									nxtState <= alu_i;
								else if (Instr == 32'b0)
									nxtState <=  i_fetch;
								else if ((op == 6'b000011) || (op == 6'b000111) || (op == 6'b001111) || (op == 6'b011111))
									nxtState <= mem_addr;
							
			decode_bb_alu_sub:				
							
								if(((op == 6'b0) && (Instr != 32'b0))|| (op == 6'b1))
									nxtState <= alu_sub;
			branch:    
								
			                if(Instr == 32'b0)
									 nxtState <= nop; 
								 else if(op == 6'b111111)
									 nxtState <= nop4;
								 else if(((op == 6'b0) && (Instr != 32'b0))|| (op == 6'b1))
								    nxtState <= change_state_beq_bne;
			nop4: 
			                   nxtState <= change_state; 
			change_state_beq_bne: 
									 nxtState <= change_state;
			change_state:
                         	 nxtState <= change_state2;
																
         alu_li:   
			              nxtState <= alu_wb;
		   
			alu_exec:     
								 if ((op == 6'b100000))
									nxtState <= alu_wb; 
								
									
		   alu_i:
								
									nxtState <= alu_wb; 
								
			alu_sub: 
			                  if(((ALU_zero == 1) && (op == 6'b0)) || ((ALU_zero == 0) && (op == 6'b1)))
										nxtState <= branch;
									else
									 	nxtState <= nop3;
			mem_addr:
							   if ((op == 6'b000011) || (op == 6'b001111))
									nxtState <= mem_rd;
								else if ((op == 6'b000111) || (op == 6'b011111))
									nxtState <= mem_wr;						
		    
		  default:        
									
										nxtState <=  i_fetch;
                endcase
        end
		  
		  always @(currState)
		  begin
		  
		  if((currState == nop) || (currState == nop2) || (currState == nop3) || (currState == nop4))
		  begin   
					PC_LdEn <=  1'b0;
		  end
		  
		  if(currState == i_fetch)
		  begin  
					PC_Sel <= 1'b0;
					PC_LdEn <=  1'b1;
					RF_WrEn <= 1'b0;
					Mem_WrEn <= 1'b0;
					   										
		  end
		  else 
				PC_LdEn <= 1'b0;
			  
        if(currState == decode_rr)
		  begin 
				RF_WrEn <= 1'b0;
			   RF_WrData_sel <= 1'b0;
				RF_B_sel <= 1'b0;
		  end
		  
		  if(currState == decode_bb_alu_sub)
			begin 
				ALU_Bin_sel <= 1'b0;
				ALU_func <= 4'b1;
				RF_B_sel <= 1'b1;
		  end
		  
		  if(currState == alu_li)
			begin 
			      ALU_func <= 4'b0;
					ALU_Bin_sel <= 1'b1; 
					RF_WrEn <= 1'b0;
					RF_B_sel <= 1'b0;
				   RF_WrData_sel <= 1'b0;
					 
			end
			
			
			if(currState == alu_exec)
			begin 
					ALU_Bin_sel <= 1'b0;
					ALU_func <= Instr[3:0];
			end
			
			
		   if(currState == alu_i)
			begin 
			      ALU_func <= Instr[29:26];
					ALU_Bin_sel <= 1'b1; 
					RF_B_sel <= 1'b1;
			end
			
			if(currState == alu_wb)
			begin 
			      RF_WrEn <= 1'b1;
					RF_B_sel <= 1'b0;
					RF_WrData_sel <= 1'b0; 
			end
			
			if(currState == alu_sub)
			begin 
				ALU_Bin_sel <= 1'b0;
				ALU_func <= 4'b1;
				RF_B_sel <= 1'b1;
		  end
		  
			if(currState == mem_addr)
			begin
					ALU_func <= 4'b0;
					ALU_Bin_sel <= 1'b1; 
					 
			end
			
			if(currState == mem_wr)
			begin 
				Mem_WrEn <= 1'b1;
				RF_B_sel <= 1'b1;
			end
			
			if(currState == mem_rd) //merge mem_rd with ld_wb
			begin 
				Mem_WrEn <= 1'b0;
				RF_WrEn <= 1'b1;
				RF_B_sel <= 1'b1;
			   RF_WrData_sel <= 1'b1;
			end
			
			
			if(currState == branch)
			begin  
				 
				   PC_Sel <= 1'b1;
				   PC_LdEn <=  1'b1;
					
						
			end
			else 
					PC_Sel <= 1'b0;
				
			
			if((currState == change_state) || (currState == change_state2) || (currState == change_state_beq_bne))
				begin  
					Sel_Instr <= 1'b1;
			   end
			else  
					Sel_Instr <= 1'b0;
					 
        end
endmodule


