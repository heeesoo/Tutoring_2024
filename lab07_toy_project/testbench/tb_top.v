`timescale 1ns/100ps

module tb_top;

reg           clk;
reg           n_rst;

reg           sig;
reg   [7:0]   in_a;
reg   [7:0]   in_b;
reg   [2:0]   control;
// 000: adder, 001: subtractor, 010: and_gate, 011: or_gate, 100: xor_gate, 101: arithmetic_right_shift, 110: logical_right_shift
    
wire  [7:0]   result;

top u_top(
    .clk(clk),
    .n_rst(n_rst),
    .sig(sig),
    .in_a(in_a),
    .in_b(in_b),
    .control(control),
    .result(result)
);

always begin
    #5
    clk = ~clk;
end

initial begin 
    clk = 1'b1;
    n_rst = 1'b0;
    
    sig = 1'b0;
    in_a = 8'b0;
    in_b = 8'b0;
    control = 3'b0;
end

initial begin 
    #10 n_rst = 1'b1;
    
    #2.2
    in_a = 8'b0011_1010;
    in_b = 8'b0001_0110;
    control = 3'h0;
    sig = 1'b1;

    #10
    control = 3'h1;

    #10
    control = 3'h2;

    #10
    control = 3'h3;

    #10
    control = 3'h4;

    #10
    control = 3'h5;

    #10
    control = 3'h6;

    #10
    control = 3'h7;

    #10
    sig = 1'b0;

    #10
    $display("simulation stop !!!!!!!!");
    $stop;
end 



endmodule