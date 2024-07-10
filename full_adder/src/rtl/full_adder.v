`timescale 1ns/10ps

module full_adder(
    din_a,
    din_b,
    c_in,
    sum,
    c_out
);

input din_a;
input din_b;
input c_in;

output sum;
output c_out;

assign sum = (din_a ^ din_b) ^ c_in;
assign c_out = ((din_a ^ din_b) & c_in) + (din_a & din_b);

endmodule