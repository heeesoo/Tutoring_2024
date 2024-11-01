module hw_assign (
    input   [2:0]   din0,
    input   [2:0]   din1,
    input   [1:0]   sel,

    output  reg [2:0]   dout
);

wire    [2:0]   sum;
wire    [2:0]   sub;
wire    [2:0]   and_w;
wire    [2:0]   shift;

// Calculation
assign sum = din0 + din1;
assign sub = din0 + (~din1 + 3'b001);
assign and_w = din0 & din1;
assign shift = {1'b0, din0[2:1]};

// mux 
always @(sum, sub, sel, sel) begin
    case (sel) 
        2'h0 : begin
            dout = sum;
        end

        2'h1 : begin
            dout = sub;
        end

        2'h2 : begin
            dout = and_w;
        end

        2'h3 : begin 
            dout = shift;
        end
        
        default : begin 
            dout = 3'h0;
        end
    endcase
end

endmodule
