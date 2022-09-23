`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:19:10 12/20/2021 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
	 
    output reg [31:0] Out,
    output reg Zero,
    input wire [31:0] A,B,
    input wire [3:0] Op
    );
	
	 always @(*)
	 begin
	 case(Op)
	 4'b0000: // Addition
	 Out = A + B;
	 4'b0001: // Subtraction
	 Out = A - B;
	 4'b0010: // Logical AND
	 Out = A & B;
	 4'b0011: // Logical OR
	 Out = A | B;
	 4'b0100: // Negation
	 Out = !A;
	 4'b1000: // shift right
	 Out = {A[31], A[31:1]};
	 4'b1010: // Logical shift right
	 Out = {1'b0,  A[31:1]};
	 4'b1001: // Logical shift left
	 Out = {A[30:0], 1'b0};
	 4'b1100: //  rotate left
	 Out = {A[30:0], A[31]};
	 4'b1101: //  rotate right
	 Out = { A[0], A[31:1]};
	 endcase
	 Zero = (Out == 32'b0) ? 1'b1 : 1'b0;
end		
	

endmodule