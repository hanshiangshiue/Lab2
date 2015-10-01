`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:55:40 08/17/2015 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
    input x,
    input y,
    input cin,
    output cout,
    output s
    );

reg s,cout;

always@(*)
begin
	s=x^y^cin;
	cout=(x&y)|(x&cin)|(y&cin);
end




endmodule
