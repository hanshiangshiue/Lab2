`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:25 08/17/2015 
// Design Name: 
// Module Name:    singledigit_dec_adder 
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
module singledigit_dec_adder(
	 input clk,
	 input rst_n,
    //input [3:0] A,
    //input [3:0] B,
    //input ci,
    //output [3:0] s,
    //output co
	 output [3:0] ftsd_ctl,
	 output [14:0] display
    );

reg [3:0] A;
reg [3:0] B;
reg ci;
reg [3:0] s;
reg co;
reg k;
reg [3:0] z;

wire [3:0] bcd;
wire [1:0] clk_ctl;
wire [3:0] in0, in1, in2, in3;



always@(posedge clk or negedge rst_n)
begin
	if(~rst_n)
	begin
		A<=0;
		B<=0;
		ci<=0;
	end
	else
	begin
		A<=4;
		B<=6;
		ci<=0;
	end
end


always@(A or B or ci)
begin
	{k,z}=A+B+ci;
end



always@(k or z)
begin
	if({k,z}>9)
		{co,s}={k,z}+5'b00110;
	else
		{co,s}={k,z};
end



	
		
assign in0=A;
assign in1=B;
assign in2=co;
assign in3=s;
	
	
	
freq_div f1(
	.clk_ctl(clk_ctl), // divided clock output
	.clk(clk), // global clock input
	.rst_n(rst_n) // active low reset
	);

bcd2ftsegdec b1( 
	.display(display), // 14-segment display output
	.bcd(bcd) // BCD input
	);

scan_ctl s1(
	.ftsd_ctl(ftsd_ctl), // ftsd display control signal 
	.ftsd_in(bcd), // output to ftsd display
	.in0(in0), // 1st input
	.in1(in1), // 2nd input
	.in2(in2), // 3rd input
	.in3(in3), // 4th input
	.ftsd_ctl_en(clk_ctl) // divided clock for scan control
	);

endmodule
