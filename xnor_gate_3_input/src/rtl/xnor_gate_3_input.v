`timescale 1ns/10ps

module xnor_gate_3_input(
    din_a,
    din_b,
    din_c,
    dout
);

input din_a, din_b, din_c;
output dout;

assign dout = ~(din_a ^ din_b ^ din_c);

endmodule