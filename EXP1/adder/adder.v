module adder(ina, inb,sum);
input [3:0] ina;
input [3:0] inb;
output [3:0] sum;
assign sum = ina + inb;
endmodule
