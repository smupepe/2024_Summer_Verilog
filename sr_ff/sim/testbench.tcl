quit -sim

vlib work;
        
vlog -f run.f

vsim work.tb_sr_ff -Lf 220model -Lf altera_mf_ver -Lf verilog -Lf cycloneive_ver