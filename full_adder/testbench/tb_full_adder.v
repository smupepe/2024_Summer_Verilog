`timescale 1ns/10ps
`define T_CLK 10

module tb_full_adder();
reg din_a;
reg din_b;
reg c_in;

wire sum;
wire c_out;

full_adder u_full_adder(
    .din_a(din_a),
    .din_b(din_b),
    .c_in(c_in),
    .sum(sum),
    .c_out(c_out)
);

initial begin
    din_a = 1'b0;
    din_b = 1'b0;
    c_in = 1'b0;

    #(`T_CLK*1) c_in = 1'b1;
    #(`T_CLK*1) din_b = 1'b1;
                c_in = 1'b0;
    #(`T_CLK*1) c_in = 1'b1;
    #(`T_CLK*1) din_a = 1'b1;
                din_b = 1'b0;
                c_in = 1'b0;
    #(`T_CLK*1) c_in = 1'b1;
    #(`T_CLK*1) din_b = 1'b1;
                c_in = 1'b0;
    #(`T_CLK*1) c_in = 1'b1;
    #(`T_CLK*1) $stop;
end

endmodule