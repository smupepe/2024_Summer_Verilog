`timescale 1ns/10ps

module half_adder(
    din_a,
    din_b,
    sum,
    c_out
);

input din_a;
input din_b;

output sum;
output c_out;

assign sum = din_a ^ din_b;
assign c_out = din_a & din_b;

endmodule