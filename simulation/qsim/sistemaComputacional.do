onerror {quit -f}
vlib work
vlog -work work sistemaComputacional.vo
vlog -work work sistemaComputacional.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sistemaComputacional_vlg_vec_tst
vcd file -direction sistemaComputacional.msim.vcd
vcd add -internal sistemaComputacional_vlg_vec_tst/*
vcd add -internal sistemaComputacional_vlg_vec_tst/i1/*
add wave /*
run -all
