quit -sim

vlib work;
        
vlog -f run.f

vsim work.tb_xnor_gate_3_input -Lf 220model -Lf altera_mf_ver -Lf verilog -Lf cycloneive_ver