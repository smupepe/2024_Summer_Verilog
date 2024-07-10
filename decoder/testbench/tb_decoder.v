`timescale 1ns/10ps
`define T_CLK 10

// // 2x4 decoder
// module tb_decoder();
// reg din_a;
// reg din_b;
// wire dout_0;
// wire dout_1;
// wire dout_2;
// wire dout_3;

// decoder u_decoder(
//     .din_a(din_a),
//     .din_b(din_b),
//     .dout_0(dout_0),
//     .dout_1(dout_1),
//     .dout_2(dout_2),
//     .dout_3(dout_3)
// );

// initial begin
//     din_a = 1'b0;
//     din_b = 1'b0;

//     #(`T_CLK*1.2) din_a = 1'b1;
//     #(`T_CLK*1.2) din_b = 1'b1;
//                   din_a = 1'b0;
//     #(`T_CLK*1.2) din_a = 1'b1;
//     #(`T_CLK*1.2) $stop;
// end

// endmodule

// 3x8 decoder
module tb_decoder();
reg din_a;
reg din_b;
reg din_c;
wire dout_0;
wire dout_1;
wire dout_2;
wire dout_3;
wire dout_4;
wire dout_5;
wire dout_6;
wire dout_7;

decoder u_decoder(
    .din_a(din_a),
    .din_b(din_b),
    .din_c(din_c),
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
    din_a = 1'b0;
    din_b = 1'b0;
    din_c = 1'b0;

    #(`T_CLK*1.2) din_a = 1'b1;
    #(`T_CLK*1.2) din_b = 1'b1;
                  din_a = 1'b0;
    #(`T_CLK*1.2) din_a = 1'b1;
    #(`T_CLK*1.2) din_c = 1'b1;
                  din_b = 1'b0;
                  din_a = 1'b0;
    #(`T_CLK*1.2) din_a = 1'b1;
    #(`T_CLK*1.2) din_b = 1'b1;
                  din_a = 1'b0;
    #(`T_CLK*1.2) din_a = 1'b1;
    #(`T_CLK*1.2) $stop;
end

endmodule