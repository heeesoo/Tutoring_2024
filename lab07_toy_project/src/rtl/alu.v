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

assign add_sub = (control == 3'b001) ? ~in_b + 8'h1 : in_b;         


adder u_adder(
    .a(in_a),
    .b(add_sub),
    .ci(1'b0),
    .s(adder_result)
);


always @(*) begin
    case(control) 
        3'h0 : result = adder_result;
        3'h1 : result = adder_result;
        3'h2 : result = and_result;
        3'h3 : result = or_result;
        3'h4 : result = xor_result;
        3'h5 : result = srl_result;
        3'h6 : result = sll_result;
        3'h7 : result = sra_result;+
        default : result = 8'hx;
    endcase            
end


assign and_result = in_a & in_b;
assign or_result = in_a | in_b;
assign xor_result = in_a ^ in_b;
assign srl_result = {4'b0, in_a[7:4]};
assign sll_result = {in_a[3:0], 4'b0};
assign sra_result = {{4{in_a[7]}}, in_a[7:4]};


endmodule