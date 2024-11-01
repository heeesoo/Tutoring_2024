`timescale 1ns/100ps

module tb_d_ff;

reg  clk;
reg  n_rst;
reg  d_in;
reg  d_out;

always #(5) clk = ~clk;

initial begin 
    #(0)
    clk = 1'b1;
    n_rst = 1'b0;
    d_in = 1'b0;
end

initial begin
    #(10) n_rst = 1'b1;

    #(10.2) d_in = 1'b1;

    #(20) d_in = 1'b0;
    
    #(20) d_in = 1'b1;

    #(10) d_in = 1'b0;

    #(10) $finish;
end

d_ff u_d_ff(
    .clk(clk),
    .n_rst(n_rst),
    .d_in(d_in),
    .d_out(d_out)
);

initial begin 
    $fsdbDumpfile("wave.fsdb");
    $fsdbDumpvars(0);
end 

endmodule
