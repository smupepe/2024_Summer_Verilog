`timescale 1ns/10ps
`define T_CLK 10

module tb_multiplexer();
reg din_a;
reg din_b;
reg din_c;
reg din_d;
reg [1:0] sel;

wire dout;

multiplexer u_multiplexer(
    .din_a(din_a),
    .din_b(din_b),
    .din_c(din_c),
    .din_d(din_d),
    .sel(sel),
    .dout(dout)
);

initial begin
    din_a = 1'b1;
    din_b = 1'b0;
    din_c = 1'b0;
    din_d = 1'b1;
    sel = 2'b00;

    #(`T_CLK*1.2) sel = 2'b01;
    #(`T_CLK*1.2) sel = 2'b10;
    #(`T_CLK*1.2) sel = 2'b11;
    #(`T_CLK*1.2) $stop;
end

endmodule