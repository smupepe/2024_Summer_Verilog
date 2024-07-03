`timescale 1ns/10ps
`define T_CLK 10

module tb_nand_gate;
reg din_a;
reg din_b;
wire dout;

nand_gate u_nand_gate(
    .din_a(din_a),
    .din_b(din_b),
    .dout(dout)
);

initial begin
    din_a = 1'b0;
    din_b = 1'b0;

    #(`T_CLK*1) din_b = 1'b1;
    #(`T_CLK*1) din_a = 1'b1;
                din_b = 1'b0;
    #(`T_CLK*1) din_b = 1'b1;
    #(`T_CLK*1) $stop;
end

endmodule