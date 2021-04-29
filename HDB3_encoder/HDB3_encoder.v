module HDB3_encoder(
	clk,
	reset_n,
	datain,
	dataout_v,
	dataout_b,
	dataout
);


input wire	reset_n;
input wire	clk;

output wire	[2:0] dataout;
output wire datain ;

assign datain = 1'b0;

output wire	[1:0] dataout_v;
output wire	[1:0] dataout_b;


add_v	b2v_inst(
	.reset_n(reset_n),
	.clk(clk),
	.datain(datain),
	.dataout_v(dataout_v));


add_b	b2v_inst1(
	.clk(clk),
	.reset_n(reset_n),
	.datain_v(dataout_v),
	.dataout_b(dataout_b));


polar	b2v_inst2(
	.clk(clk),
	.reset_n(reset_n),
	.datain_b(dataout_b),
	.codeout(dataout));

endmodule
