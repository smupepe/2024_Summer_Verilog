`timescale 1ns/10ps

// 4x1 MUX
module multiplexer (
    din_a,
    din_b,
    din_c,
    din_d,
    sel,
    dout
);

input din_a;
input din_b;
input din_c;
input din_d;
input [1:0] sel;

output reg dout;

always @(*) begin
    case (sel)
        2'b00 : begin
            dout = din_a;
        end

        2'b01 : begin
            dout = din_b;
        end

        2'b10 : begin
            dout = din_c;
        end

        2'b11 : begin
            dout = din_d;
        end

        default : begin
            dout = 1'b0;
        end
    endcase
end
    
endmodule