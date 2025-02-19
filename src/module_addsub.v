// An adder-subtractor can be built from an adder by optionally negating one of the inputs, which is equivalent to inverting the input then adding 1. The net result is a circuit that can do two operations: (a + b + 0) and (a + ~b + 1). See Wikipedia if you want a more detailed explanation of how this circuit works.

// Use a 32-bit wide XOR gate to invert the b input whenever sub is 1. (This can also be viewed as b[31:0] XORed with sub replicated 32 times. See replication operator.). Also connect the sub input to the carry-in of the adder.


module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

    wire cout_a, cout_b;
    wire [31:0] b_or_bNot;
    assign b_or_bNot = b ^ {32{sub}};
    add16 lower(a[15:0], b_or_bNot[15:0], sub, sum[15:0], cout_a);
    add16 upper(a[31:16], b_or_bNot[31:16], cout_a, sum[31:16], cout_b);

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
