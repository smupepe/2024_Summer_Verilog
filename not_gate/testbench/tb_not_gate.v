`timescale 1ns/10ps
`define T_CLK 10

module tb_not_gate;
reg din;
wire dout;

not_gate u_not_gate(
    .din(din),
    .dout(dout)
);
 
initial begin
    din = 1'b0;
    
    #(`T_CLK*1) din = 1'b1;
    #(`T_CLK*1) din = 1'b0;
    #(`T_CLK*1) din = 1'b1;
    #(`T_CLK*1) din = 1'b0;
    #(`T_CLK*1) din = 1'b1;
    #(`T_CLK*1) din = 1'b0;
    #(`T_CLK*1) $stop;
end

endmodule