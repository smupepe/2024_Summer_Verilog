quit -sim

vlib work;
        
vlog -f run.f

vsim work.tb_xor_gate -Lf 220model -Lf altera_mf_ver -Lf verilog -Lf cycloneive_ver