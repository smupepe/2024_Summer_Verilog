`timescale 1ns/10ps
`define T_CLK 10

module tb_xor_gate_3_input;

reg din_a;
reg din_b;
reg din_c;
wire dout;

xor_gate_3_input u_xor_gate_3_input(
    .din_a(din_a),
    .din_b(din_b),
    .din_c(din_c),
    .dout(dout)
);

initial begin
    din_a = 1'b0;
    din_b = 1'b0;
    din_c = 1'b0;

    #(`T_CLK*1) din_c = 1'b1;
    #(`T_CLK*1) din_b = 1'b1;
                din_c = 1'b0;
    #(`T_CLK*1) din_c = 1'b1;
    #(`T_CLK*1) din_a = 1'b1;
                din_b = 1'b0;
                din_c = 1'b0;
    #(`T_CLK*1) din_c = 1'b1;
    #(`T_CLK*1) din_b = 1'b1;
                din_c = 1'b0;
    #(`T_CLK*1) din_c = 1'b1;
    #(`T_CLK*1) $stop;
end

endmodule