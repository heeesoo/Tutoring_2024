module top (
    input           clk,
    input           n_rst,

    input           sig,
    input   [7:0]   in_a,
    input   [7:0]   in_b,
    input   [2:0]   control,
    // 000: adder, 001: subtractor, 010: and_gate, 011: or_gate, 100: xor_gate, 101: arithmetic_right_shift, 110: logical_right_shift
    
    output  reg [7:0]   result
);

wire    [7:0]   tmp;

alu u_alu(
    .in_a(in_a),
    .in_b(in_b),
    .control(control),
    .result(tmp)
);

// Assignment result
// Put your Code !!!!!!


endmodule