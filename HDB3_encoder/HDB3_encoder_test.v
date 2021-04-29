`timescale 1ns/100ps 
module HDB3_encoder_test();
reg clk;
reg reset_n;

wire datain;
wire [2:0] dataout;
wire [1:0] dataout_v;
wire [1:0] dataout_b;

HDB3_encoder DESIGN (
.clk(clk),
.reset_n(reset_n),
.datain(datain),
.dataout_v(dataout_v),
.dataout_b(dataout_b),
.dataout(dataout)
);
initial
begin
clk = 1'b0;
end

always 
begin
	#5 clk = ~clk;
end

initial
begin
	#0 reset_n = 1'b0;
	#20 reset_n = 1'b1;
end
/*
initial
  begin
  datain = 1'bz;
  #0 datain = 1'b0;
  #20 datain = 1'b1;
  #10 datain = 1'b0;
  #10 datain = 1'b1;
  #10 datain = 1'b0;
  #10 datain = 1'b1;
  #10 datain = 1'b1;
  #10 datain = 1'b0;
  #10 datain = 1'b0;
  #10 datain = 1'b0;
  #10 datain = 1'b0;
  #10 datain = 1'b0;
  #10 datain = 1'b1;
  #10 datain = 1'b1;
  #10 datain = 1'b0;
  #10 datain = 1'b0;
  #10 datain = 1'b0;
  #10 datain = 1'b0;
  #10 datain = 1'b1;
 end
*/
endmodule 