`timescale 1ns/10ps

module t_ff(
    clk,
    n_rst,
    din_t,
    dout_q
);

input clk;
input n_rst;
input din_t;

output reg dout_q;

always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        dout_q <= 1'b0;
    end

    else begin
        case (din_t)
            1'b0 : begin
                dout_q <= dout_q;
            end

            1'b1 : begin
                dout_q <= ~dout_q;
            end

            default : begin
                dout_q <= 1'b0;
            end
        endcase
    end
end

endmodule