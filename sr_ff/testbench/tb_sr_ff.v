`timescale 1ns/10ps
`define T_CLK 10

module tb_sr_ff();
reg clk;
reg n_rst;
initial begin
    clk = 1'b1;
    n_rst = 1'b0;
    #(`T_CLK*2.2) n_rst = 1'b1;
end
always #(`T_CLK/2) clk = ~clk;

reg din_s;
reg din_r;

wire dout_q;

sr_ff u_sr_ff(
    .clk(clk),
    .n_rst(n_rst),
    .din_s(din_s),
    .din_r(din_r),
    .dout_q(dout_q)
);

initial begin
    din_s = 1'b0;
    din_r = 1'b0;
    wait(n_rst == 1'b1);

    #(`T_CLK*1.2) din_s = 1'b0;
                  din_r = 1'b0;
    #(`T_CLK*1.2) din_s = 1'b0; 
                  din_r = 1'b1;
    #(`T_CLK*1.2) din_s = 1'b1;
                  din_r = 1'b0;
    #(`T_CLK*1.2) din_s = 1'b1;
                  din_r = 1'b1;
    #(`T_CLK*1.2) din_s = 1'b0;
                  din_r = 1'b1;     
    #(`T_CLK*1.2) din_s = 1'b1;
                  din_r = 1'b0;  
    #(`T_CLK*1.2) din_s = 1'b0;
                  din_r = 1'b0;           
    #(`T_CLK*1.2) $stop;
end

endmodule