`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: Gecemmo Solutions AB
// Engineer: Johan Astborg
// 
// Create Date:    23:23:39 10/04/2013 
// Design Name: 
// Module Name:    main 
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

module main(Led, button, clk);
	input wire clk;
	reg [27:0] count = 0;
	output wire [7:0] Led;
	input button;
	
	always @(posedge clk)
	begin
		if (button)
			count = 0;
		else
			count = count + 1;
	end
	
	assign Led = count[27:20];
	
endmodule
