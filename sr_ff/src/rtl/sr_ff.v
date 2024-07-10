`timescale 1ns/10ps

module sr_ff(
    clk,
    n_rst,
    din_s,
    din_r,
    dout_q
);

input clk;
input n_rst;
input din_s;
input din_r;

output reg dout_q;

always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        dout_q <= 1'b0;
    end
    
    else begin
        case ({din_s, din_r}) 
            2'b00 : begin
                dout_q <= dout_q;
            end

            2'b01 : begin
                dout_q <= 1'b0;
            end

            2'b10 : begin
                dout_q <= 1'b1;
            end

            2'b11 : begin
                dout_q <= 1'bx;
            end

            default : begin
                dout_q <= 1'b0;
            end
        endcase
    end
end

endmodule