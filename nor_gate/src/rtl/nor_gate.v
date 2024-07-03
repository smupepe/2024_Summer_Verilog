`timescale 1ns/10ps

module nor_gate(
    din_a,
    din_b,
    dout
);

input din_a, din_b;
output dout;

assign dout = ~(din_a | din_b);

endmodule