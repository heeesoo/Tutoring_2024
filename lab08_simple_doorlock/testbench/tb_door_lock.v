`timescale 1ns/100ps
`define T_CLK 10

module tb_door_lock;
reg clk;
reg n_rst;
reg button_0;
reg button_1;
reg button_2;
reg start;

wire led_ok;
wire led_fail;
wire led_0;
wire led_1;
wire led_2;

door_lock u_door_lock(
    .clk(clk),
    .n_rst(n_rst),
    .button_0(button_0),
    .button_1(button_1),
    .button_2(button_2),
    .start(start),
    .led_ok(led_ok),
    .led_fail(led_fail),
    .led_0(led_0),
    .led_1(led_1),
    .led_2(led_2)
);

always #(`T_CLK/2) clk = ~clk;

initial begin
    clk = 1'b1;
	n_rst = 1'b0;
    start = 1'b0;
    button_0 = 1'b0;
    button_1 = 1'b0;
    button_2 = 1'b0;

	#(`T_CLK*1.2) n_rst = 1'b1;

    #(`T_CLK) 
    start = 1'b1;
    
    #(`T_CLK * 2) 
    button_2 = 1'b1;

    #(`T_CLK) 
    button_2 = 1'b0;

    #(`T_CLK * 2) 
    button_0 = 1'b1;

    #(`T_CLK) 
    button_0 = 1'b0;

    #(`T_CLK * 2) 
    start = 1'b0;

    #(`T_CLK * 4) 
    start = 1'b1;

    #(`T_CLK * 2) 
    button_2 = 1'b1;

    #(`T_CLK) 
    button_2 = 1'b0;

    #(`T_CLK * 2)  
    button_1 = 1'b1;

    #(`T_CLK)  
    button_1 = 1'b0;

    #(`T_CLK * 2) 
    start = 1'b0;

    #(`T_CLK * 4) 
    start = 1'b1;

    #(`T_CLK * 2)  
    button_0 = 1'b1;

    #(`T_CLK)  
    button_0 = 1'b0;

    #(`T_CLK * 2)  
    button_0 = 1'b1;

    #(`T_CLK )  
    button_0 = 1'b0;

    #(`T_CLK * 2) 
    start = 1'b0;

    #(`T_CLK * 3) 
    $stop;
end

endmodule