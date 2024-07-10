`timescale 1ns/10ps
`define T_CLK 10

module tb_demultiplexer();
reg den;
reg [2:0] sel;

wire dout_0;
wire dout_1;
wire dout_2;
wire dout_3;
wire dout_4;
wire dout_5;
wire dout_6;
wire dout_7;

demultiplexer u_demultiplexer(
    .den(den),
    .sel(sel),
    .dout_0(dout_0),
    .dout_1(dout_1),
    .dout_2(dout_2),
    .dout_3(dout_3),
    .dout_4(dout_4),
    .dout_5(dout_5),
    .dout_6(dout_6),
    .dout_7(dout_7)
);

initial begin
    den = 1'b1;
    sel = 3'b000;

    #(`T_CLK*1.2) sel = 3'b001;
    #(`T_CLK*1.2) sel = 3'b010;
    #(`T_CLK*1.2) sel = 3'b011;
    #(`T_CLK*1.2) sel = 3'b100;
    #(`T_CLK*1.2) sel = 3'b101;
    #(`T_CLK*1.2) sel = 3'b110;
    #(`T_CLK*1.2) sel = 3'b111;
    #(`T_CLK*1.2) $stop;
end

endmodule