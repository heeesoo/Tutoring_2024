module alu (
    input   [7:0]   in_a,
    input   [7:0]   in_b,
    input   [2:0]   control,
    // 000: adder, 001: subtractor, 010: and_gate, 011: or_gate, 100: xor_gate, 101: arithmetic_right_shift, 110: logical_right_shift
    
    output  reg [7:0]   result
);

wire    [7:0]   add_sub;

wire    [7:0]   adder_result, and_result, or_result, xor_result;    // add, sub, and, or, xor
wire    [7:0]   srl_result;                                         // arithmetic_right_shift   only in_a signal 4bit shift
wire    [7:0]   sll_result;                                         // arithmetic_left_shift    only in_a signal 4bit shift
wire    [7:0]   sra_result;                                         // logical_right_shift      only in_a signal 4bit shift

// Put your code !!!!!!


endmodule