`timescale 1ns/10ps
`define T_CLK 10

module tb_t_ff();
reg clk;
reg n_rst;
initial begin
    clk = 1'b1;
    n_rst = 1'b0;
    #(`T_CLK*2.2) n_rst = 1'b1;
end
always #(`T_CLK/2) clk = ~clk;

reg din_t;
wire dout_q;

t_ff u_t_ff(
    .clk(clk),
    .n_rst(n_rst),
    .din_t(din_t),
    .dout_q(dout_q)
);

initial begin
    din_t = 1'b0;
    wait (n_rst == 1'b1)

    #(`T_CLK*1.2) din_t = 1'b0;
    #(`T_CLK*1.2) din_t = 1'b1;
    #(`T_CLK*1.2) din_t = 1'b1;
    #(`T_CLK*1.2) din_t = 1'b0;
    #(`T_CLK*1.2) din_t = 1'b1;
    #(`T_CLK*1.2) $stop;
end

endmodule