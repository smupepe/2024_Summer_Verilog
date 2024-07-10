`timescale 1ns/10ps
`define T_CLK 10

// // 4x2 encoder
// module tb_encoder ();
// reg din_a;
// reg din_b;
// reg din_c;
// reg din_d;

// wire dout_0;
// wire dout_1;

// encoder u_encoder(
//     .din_a(din_a),
//     .din_b(din_b),
//     .din_c(din_c),
//     .din_d(din_d),
//     .dout_0(dout_0),
//     .dout_1(dout_1)
// );

// initial begin 
//     din_a = 1'b1;
//     din_b = 1'b0;
//     din_c = 1'b0;
//     din_d = 1'b0;

//     #(`T_CLK*1.2) din_b = 1'b1;
//                   din_a = 1'b0;
//     #(`T_CLK*1.2) din_c = 1'b1;
//                   din_b = 1'b0;
//     #(`T_CLK*1.2) din_d = 1'b1;
//                   din_c = 1'b0;
//     #(`T_CLK*1.2) $stop;
// end

// endmodule



// 8x3 encoder
module tb_encoder();
reg din_a;
reg din_b;
reg din_c;
reg din_d;
reg din_e;
reg din_f;
reg din_g;
reg din_h;

wire dout_0;
wire dout_1;
wire dout_2;

encoder u_encoder(
    .din_a(din_a),
    .din_b(din_b),
    .din_c(din_c),
    .din_d(din_d),
    .din_e(din_e),
    .din_f(din_f),
    .din_g(din_g),
    .din_h(din_h),
    .dout_0(dout_0),
    .dout_1(dout_1),
    .dout_2(dout_2)
);

initial begin
    din_a = 1'b1;
    din_b = 1'b0;
    din_c = 1'b0;
    din_d = 1'b0;
    din_e = 1'b0;
    din_f = 1'b0;
    din_g = 1'b0;
    din_h = 1'b0;

    #(`T_CLK*1.2) din_b = 1'b1;
                  din_a = 1'b0;
    #(`T_CLK*1.2) din_c = 1'b1;
                  din_b = 1'b0;
    #(`T_CLK*1.2) din_d = 1'b1;
                  din_c = 1'b0;
    #(`T_CLK*1.2) din_e = 1'b1;
                  din_d = 1'b0;
    #(`T_CLK*1.2) din_f = 1'b1;
                  din_e = 1'b0;
    #(`T_CLK*1.2) din_g = 1'b1;
                  din_f = 1'b0;
    #(`T_CLK*1.2) din_h = 1'b1;
                  din_g = 1'b0;
    #(`T_CLK*1.2) $stop;
end

endmodule