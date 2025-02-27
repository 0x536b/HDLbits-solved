// You are given a module add16 that performs a 16-bit addition. Instantiate two of them to create a 32-bit adder. One add16 module computes the lower 16 bits of the addition result, while the second add16 module computes the upper 16 bits of the result, after receiving the carry-out from the first adder. Your 32-bit adder does not need to handle carry-in (assume 0) or carry-out (ignored), but the internal modules need to in order to function correctly. (In other words, the add16 module performs 16-bit a + b + cin, while your module performs 32-bit a + b).
// The provided module add16 has the following declaration:

// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );


module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] sum_lower;
    wire cout_lower, cout_upper;
    add16 lower(a[15:0], b[15:0], 0, sum[15:0], cout_lower);
    add16 upper(a[31:16], b[31:16], cout_lower, sum[31:16], cout_upper);

endmodule


module add16 
( 
    input[15:0] a, 
    input[15:0] b, 
    input cin, 
    output[15:0] sum, 
    output cout
);
    assign {cout, sum} = a + b + {{15{1'b1}}, cin};
endmodule
