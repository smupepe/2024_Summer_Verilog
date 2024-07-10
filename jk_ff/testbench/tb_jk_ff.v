`timescale 1ns/10ps
`define T_CLK 10

module tb_jk_ff();
reg clk;
reg n_rst;
initial begin
    clk = 1'b1;
    n_rst = 1'b0;
    #(`T_CLK*2.2) n_rst = 1'b1;
end
always #(`T_CLK/2) clk = ~clk;

reg din_j;
reg din_k;

wire dout_q;

jk_ff u_jk_ff(
    .clk(clk),
    .n_rst(n_rst),
    .din_j(din_j),
    .din_k(din_k),
    .dout_q(dout_q)
);

initial begin
    din_j = 1'b0;
    din_k = 1'b0;
    wait (n_rst == 1'b1);

    #(`T_CLK*1.2) din_j = 1'b0;
                  din_k = 1'b0;
    #(`T_CLK*1.2) din_j = 1'b0;
                  din_k = 1'b1;
    #(`T_CLK*1.2) din_j = 1'b1;
                  din_k = 1'b0;
    #(`T_CLK*1.2) din_j = 1'b1;
                  din_k = 1'b1;
    #(`T_CLK*1.2) din_j = 1'b1;
                  din_k = 1'b0;
    #(`T_CLK*1.2) din_j = 1'b0;
                  din_k = 1'b1;
    #(`T_CLK*1.2) din_j = 1'b1;
                  din_k = 1'b1;
    #(`T_CLK*3.6) $stop;
end

endmodule