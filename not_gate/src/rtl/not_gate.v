`timescale 1ns/10ps

module not_gate (
    din,
    dout
);

input din;
output dout;

assign dout = ~din;

endmodule