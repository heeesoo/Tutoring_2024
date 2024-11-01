module d_ff (
    input       clk,
    input       n_rst,
    input       d_in,
    output  reg d_out
);

always @(posedge clk or negedge n_rst) begin 
    if(!n_rst) begin 
        d_out <= 1'b0;
    end

    else begin 
        d_out <= d_in;
    end
end

endmodule
