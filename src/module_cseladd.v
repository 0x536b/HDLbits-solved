// In this exercise, you are provided with the same module add16 as the previous exercise, which adds two 16-bit numbers with carry-in and produces a carry-out and 16-bit sum. You must instantiate three of these to build the carry-select adder, using your own 16-bit 2-to-1 multiplexer.

module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    wire [15:0] sum_upper_a, sum_upper_b, sum_lower;
    wire cout_a, cout_b, cout_select;
    add16 adder_upper_0(a[31:16], b[31:16], 0, sum_upper_a, cout_a);
    add16 adder_upper_1(a[31:16], b[31:16], 1, sum_upper_b, cout_b);
    add16 adder_lower(a[15:0], b[15:0], 0, sum_lower, cout_select);

    assign sum = cout_select ? {sum_upper_b, sum_lower} : {sum_upper_a, sum_lower};

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
