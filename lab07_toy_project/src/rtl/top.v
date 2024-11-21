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

always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        result <= 8'b0;
    end

    else begin 
        if (sig) begin  
            result <= tmp;
        end
        
        else begin 
            result <= result;
        end
    end
end


endmodule