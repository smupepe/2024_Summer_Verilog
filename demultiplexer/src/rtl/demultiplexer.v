`timescale 1ns/10ps

// 1x8 demux
module demultiplexer(
    den,
    sel,
    dout_0,
    dout_1,
    dout_2,
    dout_3,
    dout_4,
    dout_5,
    dout_6,
    dout_7
);

input den;
input [2:0] sel;

output reg dout_0;
output reg dout_1;
output reg dout_2;
output reg dout_3;
output reg dout_4;
output reg dout_5;
output reg dout_6;
output reg dout_7;

always @(*) begin
    case (sel)
        3'b000 : begin
            dout_0 = ~den;
            dout_1 = 1'bx;
            dout_2 = 1'bx;
            dout_3 = 1'bx;
            dout_4 = 1'bx;
            dout_5 = 1'bx;
            dout_6 = 1'bx;
            dout_7 = 1'bx;
        end

        3'b001 : begin
            dout_0 = 1'bx;
            dout_1 = ~den;
            dout_2 = 1'bx;
            dout_3 = 1'bx;
            dout_4 = 1'bx;
            dout_5 = 1'bx;
            dout_6 = 1'bx;
            dout_7 = 1'bx;
        end

        3'b010 : begin
            dout_0 = 1'bx;
            dout_1 = 1'bx;
            dout_2 = ~den;
            dout_3 = 1'bx;
            dout_4 = 1'bx;
            dout_5 = 1'bx;
            dout_6 = 1'bx;
            dout_7 = 1'bx;
        end

        3'b011 : begin
            dout_0 = 1'bx;
            dout_1 = 1'bx;
            dout_2 = 1'bx;
            dout_3 = ~den;
            dout_4 = 1'bx;
            dout_5 = 1'bx;
            dout_6 = 1'bx;
            dout_7 = 1'bx;
        end

        3'b100 : begin
            dout_0 = 1'bx;
            dout_1 = 1'bx;
            dout_2 = 1'bx;
            dout_3 = 1'bx;
            dout_4 = ~den;
            dout_5 = 1'bx;
            dout_6 = 1'bx;
            dout_7 = 1'bx;
        end

        3'b101 : begin
            dout_0 = 1'bx;
            dout_1 = 1'bx;
            dout_2 = 1'bx;
            dout_3 = 1'bx;
            dout_4 = 1'bx;
            dout_5 = ~den;
            dout_6 = 1'bx;
            dout_7 = 1'bx;        
        end

        3'b110 : begin
            dout_0 = 1'bx;
            dout_1 = 1'bx;
            dout_2 = 1'bx;
            dout_3 = 1'bx;
            dout_4 = 1'bx;
            dout_5 = 1'bx;
            dout_6 = ~den;
            dout_7 = 1'bx;
        end

        3'b111 : begin
            dout_0 = 1'bx;
            dout_1 = 1'bx;
            dout_2 = 1'bx;
            dout_3 = 1'bx;
            dout_4 = 1'bx;
            dout_5 = 1'bx;
            dout_6 = 1'bx;
            dout_7 = ~den;
        end

        default : begin
            dout_0 = 1'bx;
            dout_1 = 1'bx;
            dout_2 = 1'bx;
            dout_3 = 1'bx;
            dout_4 = 1'bx;
            dout_5 = 1'bx;
            dout_6 = 1'bx;
            dout_7 = 1'bx;
        end
    endcase
end

endmodule