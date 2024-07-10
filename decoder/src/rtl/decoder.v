`timescale 1ns/10ps
// // 2x4 decoder
// module decoder(
//     din_a,
//     din_b,
//     dout_0,
//     dout_1,
//     dout_2,
//     dout_3
// );

// input din_a;
// input din_b;

// output dout_0;
// output dout_1;
// output dout_2;
// output dout_3;

// assign dout_0 = (~din_a) & (~din_b);
// assign dout_1 = (din_a) & (~din_b);
// assign dout_2 = (~din_a) & (din_b);
// assign dout_3 = (din_a) & (din_b);

// endmodule

// 3x8 decoder
module decoder(
    din_a,
    din_b,
    din_c,
    dout_0,
    dout_1,
    dout_2,
    dout_3,
    dout_4,
    dout_5,
    dout_6,
    dout_7
);

input din_a;
input din_b;
input din_c;

output dout_0;
output dout_1;
output dout_2;
output dout_3;
output dout_4;
output dout_5;
output dout_6;
output dout_7;

assign dout_0 = (~din_c) & (~din_b) & (~din_a);
assign dout_1 = (~din_c) & (~din_b) & (din_a);
assign dout_2 = (~din_c) & (din_b) & (~din_a);
assign dout_3 = (~din_c) & (din_b) & (din_a);
assign dout_4 = (din_c) & (~din_b) & (~din_a);
assign dout_5 = (din_c) & (~din_b) & (din_a);
assign dout_6 = (din_c) & (din_b) & (~din_a);
assign dout_7 = (din_c) & (din_b) & (din_a);

endmodule