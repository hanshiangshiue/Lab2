`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:01:56 08/17/2015 
// Design Name: 
// Module Name:    bcdto14segdecoder 
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
module bcdto14segdecoder(
    input [3:0] i, //BCD input
    output [14:0] D_ssd, //14 segment displays
    output [3:0] d //LED
    );

reg [14:0] D_ssd;
reg [3:0] d;


always @(i)
		case (i)
			4'd0:
			begin
				D_ssd = 15'b0000_0011_1111_111; //0
				d=4'b0000;
			end
			4'd1: 
			begin
				D_ssd = 15'b1111_1111_1011_011; //1
				d=4'b0001;
			end
			4'd2: 
			begin
				D_ssd = 15'b0010_0100_1111_111; //2
				d=4'b0010;
			end
			4'd3: 
			begin
				D_ssd = 15'b0000_1100_1111_111; //3
				d=4'b0011;
			end
			4'd4: 
			begin
				D_ssd = 15'b1001_1000_1111_111; //4
				d=4'b0100;
			end
			4'd5: 
			begin
				D_ssd = 15'b0100_1000_1111_111; //5
				d=4'b0101;
			end
			4'd6: 
			begin
				D_ssd = 15'b0100_0000_1111_111; //6
				d=4'b0110;
			end
			4'd7: 
			begin
				D_ssd = 15'b0001_1111_1111_111; //7
				d=4'b0111;
			end
			4'd8: 
			begin
				D_ssd = 15'b0000_0000_1111_111; //8
				d=4'b1000;
			end
			4'd9: 
			begin
				D_ssd = 15'b0000_1000_1111_111; //9
				d=4'b1001;
			end
			4'd10: 
			begin
				D_ssd = 15'b0111_0000_1111_111; //F
				d=4'b1010;
			end
			4'd11: 
			begin
				D_ssd = 15'b0111_0000_1111_111; //F
				d=4'b1011;
			end
			4'd12: 
			begin
				D_ssd = 15'b0111_0000_1111_111; //F
				d=4'b1100;
			end
			4'd13: 
			begin
				D_ssd = 15'b0111_0000_1111_111; //F
				d=4'b1101;
			end
			4'd14: 
			begin
				D_ssd = 15'b0111_0000_1111_111; //F
				d=4'b1110;
			end
			4'd15: 
			begin
				D_ssd = 15'b0111_0000_1111_111; //F
				d=4'b1111;
			end
			default:
			begin
				D_ssd = 15'b1111_1111_1111_111;
				d=4'b0000;
			end
		endcase


endmodule
