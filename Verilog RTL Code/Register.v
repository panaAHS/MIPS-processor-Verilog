`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:53 12/28/2021 
// Design Name: 
// Module Name:    Register 
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
module Register(
    input wire [31:0] Data , 
    output reg [31:0] Dout,
    input wire CLK,
    input wire WE, reset
    );
	 
	 		
		
      always @(posedge CLK, posedge reset)
		begin 
			if(reset) // reset
				Dout <= 32'b0; 
		  else if (WE) // normal function
			Dout <= Data;  
end
endmodule
