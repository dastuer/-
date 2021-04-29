// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"
// CREATED		"Wed Apr 28 20:05:06 2021"

module BDPSK_encoder(
	clk,
	reset_n,
	clk_out,
	dataout_PN,
	dataout_dif,
	clk_DA,
	blank_DA_n,
	sync_DA_n,
	dataout
);


input wire	clk;
input wire	reset_n;
output wire	clk_out;
output wire	dataout_PN;
output wire	dataout_dif;
output wire	clk_DA;
output wire	blank_DA_n;
output wire	sync_DA_n;
output wire	[7:0] dataout;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_5;
wire	[6:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_4;

assign	clk_out = SYNTHESIZED_WIRE_5;
assign	dataout_PN = SYNTHESIZED_WIRE_4;
assign	dataout_dif = SYNTHESIZED_WIRE_0;




Controller	b2v_inst(
	.clk(clk),
	.reset_n(reset_n),
	.datain(SYNTHESIZED_WIRE_0),
	.clk_DA(clk_DA),
	.blank_DA_n(blank_DA_n),
	.sync_DA_n(sync_DA_n),
	.address(SYNTHESIZED_WIRE_2));


div_clk	b2v_inst1(
	.clk(clk),
	.clk_out(SYNTHESIZED_WIRE_5));


PN_Seq	b2v_inst3(
	.clk(SYNTHESIZED_WIRE_5),
	.reset_n(reset_n),
	.dataout(SYNTHESIZED_WIRE_4));


LookUpTable	b2v_inst4(
	.clk(clk),
	.reset_n(reset_n),
	.address(SYNTHESIZED_WIRE_2),
	.dataout(dataout));


dif	b2v_inst5(
	.clk(SYNTHESIZED_WIRE_5),
	.reset_n(reset_n),
	.datain(SYNTHESIZED_WIRE_4),
	.dataout(SYNTHESIZED_WIRE_0));


endmodule
