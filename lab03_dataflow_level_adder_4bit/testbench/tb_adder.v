`timescale 1ns/100ps
`define T_CLK 10

module tb_adder;

reg [3:0] 	a;
reg [3:0] 	b;
reg  	  	cin;

wire [3:0]	dout;
wire 		cout;


initial begin
	a = 4'b0000;
	b = 4'b0000;
	cin = 1'b0;

	#(`T_CLK * 5)
	a = 4'b1010;
	b = 4'b0111;
	cin = 1'b1;

	#(`T_CLK * 5)
	a = 4'b0110;
	b = 4'b0101;
	cin = 1'b0;

	#(`T_CLK * 5) 
	$stop;
end


top u_top(
	.a(a),
	.b(b),
	.cin(cin),
	.dout(dout),
	.cout(cout)
);

endmodule