`timescale 1ns/10ps

module  d_ff (
    clk,
    n_rst,
    din_d,
    dout_q
);

input clk;
input n_rst;
input din_d;

output reg dout_q;

always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        dout_q <= 1'b0;
    end

    else begin
        case (din_d)
            1'b0 : begin
                dout_q <= 1'b0;
            end

            1'b1 : begin
                dout_q <= 1'b1;
            end

            default : begin
                dout_q <= 1'b0;
            end
        endcase
    end
end
    
endmodule