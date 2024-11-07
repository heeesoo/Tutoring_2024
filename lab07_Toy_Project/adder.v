module adder (
    input   [7:0]   a,
    input   [7:0]   b,
    input           ci,

    output  [7:0]   s
);

wire c_w;
wire co;

adder_4bit u_adder_4bit_0(
    .a(a[3:0]),
    .b(b[3:0]),
    .s(s[3:0]),
    .ci(ci),
    .co(c_w)
);

adder_4bit u_adder_4bit_1(
    .a(a[7:4]),
    .b(b[7:4]),
    .s(s[7:4]),
    .ci(c_w),
    .co(co)
);

endmodule


module adder_4bit(
    input [3:0] a,
    input [3:0] b,
    input ci,

    output [3:0] s,
    output co
);

wire cw1;
wire cw2;
wire cw3;


full_adder u_full_adder_0(
    .a(a[0]),
    .b(b[0]),
    .s(s[0]),
    .ci(ci),
    .co(cw1)
);

full_adder u_full_adder_1(
    .a(a[1]),
    .b(b[1]),
    .s(s[1]),
    .ci(cw1),
    .co(cw2)
);

full_adder u_full_adder_2(
    .a(a[2]),
    .b(b[2]),
    .s(s[2]),
    .ci(cw2),
    .co(cw3)
);

full_adder u_full_adder_3(
    .a(a[3]),
    .b(b[3]),
    .s(s[3]),
    .ci(cw3),
    .co(co)
);



endmodule


module full_adder(
    input   a,
    input   b,
    input   ci,
    
    output  s,
    output  co
);

wire    s_w;
wire    c_w1;
wire    c_w2;

// first half adder
assign s_w = a ^ b;
assign c_w1 = a & b;

// second half adder
assign s = s_w ^ ci;
assign c_w2 = s_w & ci;

// carry out
assign co = c_w1 | c_w2;


endmodule