`timescale 1ns/100ps
module BDPSK_encoder_test;

reg clk;
reg reset_n;
wire [7:0] dataout;
wire dataout_PN;
wire dataout_dif;
wire clk_out;


BDPSK_encoder DESIGN(
.clk(clk),
.reset_n(reset_n),
.clk_out(clk_out),
.dataout_PN(dataout_PN),
.dataout_dif(dataout_dif),
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
    #0  reset_n = 1'b0;
    #3840 reset_n = 1'b1;
end

endmodule