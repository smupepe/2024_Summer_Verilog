`timescale 1ns/10ps

// // 4x2 encoder
// module encoder(
//     din_a,
//     din_b,
//     din_c,
//     din_d,
//     dout_0,
//     dout_1
// );

// input din_a;
// input din_b;
// input din_c;
// input din_d;

// output dout_0;
// output dout_1;

// assign dout_0 = din_b | din_d;
// assign dout_1 = din_c | din_d;

// endmodule



// 8x3 encoder
module encoder(
    din_a,
    din_b,
    din_c,
    din_d,
    din_e,
    din_f,
    din_g,
    din_h,
    dout_0,
    dout_1,
    dout_2
);

input din_a;
input din_b;
input din_c;
input din_d;
input din_e;
input din_f;
input din_g;
input din_h;

output dout_0;
output dout_1;
output dout_2;

assign dout_0 = din_b | din_d | din_f | din_h;
assign dout_1 = din_c | din_d | din_g | din_h;
assign dout_2 = din_e | din_f | din_g | din_h;

endmodule