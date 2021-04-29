library verilog;
use verilog.vl_types.all;
entity div_fre is
    generic(
        N               : integer := 128
    );
    port(
        clk             : in     vl_logic;
        reset_n         : in     vl_logic;
        clk_o           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end div_fre;
