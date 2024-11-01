module tb_adder;

reg [3:0] a;
reg [3:0] b;
reg c_in;

wire [3:0] sum;
wire c_out;

adder_4bit u_adder_4bit(
    .a(a),
    .b(b),
    .sum(sum),
    .c_in(c_in),
    .c_out(c_out)
);

initial begin
    #0;
    a = 4'h0;
    b = 4'h0;
    c_in = 1'b0;

    #10;
    a = 4'h0;
    b = 4'h0;
    c_in = 1'b1;

    #10;
    a = 4'h5;
    b = 4'h6;
    c_in = 1'b0;

    #10;
    a = 4'h7;
    b = 4'hA;
    c_in = 1'b1;

    #10;
    $stop;

end

endmodule