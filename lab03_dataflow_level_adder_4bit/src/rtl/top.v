`timescale 1ns/100ps

module top(
    input   [3:0]   a,
    input   [3:0]   b,
    input           cin,

    output  [3:0]   dout,
    output          cout
);

wire    [4:0]   overflow_data;

assign overflow_data = a + b + cin;

// SUM 
assign dout = overflow_data[3:0];

// Carry out 
assign cout = overflow_data[4];

endmodule