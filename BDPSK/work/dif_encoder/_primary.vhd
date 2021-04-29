library verilog;
use verilog.vl_types.all;
entity dif_encoder is
    port(
        clk_o           : in     vl_logic;
        reset_n         : in     vl_logic;
        data_PN         : in     vl_logic;
        re              : out    vl_logic
    );
end dif_encoder;
