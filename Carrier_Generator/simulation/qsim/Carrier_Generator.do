onerror {quit -f}
vlib work
vlog -work work Carrier_Generator.vo
vlog -work work Carrier_Generator.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Carrier_Generator_vlg_vec_tst
vcd file -direction Carrier_Generator.msim.vcd
vcd add -internal Carrier_Generator_vlg_vec_tst/*
vcd add -internal Carrier_Generator_vlg_vec_tst/i1/*
add wave /*
run -all
