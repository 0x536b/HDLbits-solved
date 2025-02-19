//  Your top_module will instantiate two copies of add16, each of which will instantiate 16 copies of add1.

// module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
// module add1 ( input a, input b, input cin, output sum, output cout );


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
    
    wire [15:0] cins, couts;
    generate
        genvar i;
        for (i=0; i<15; i = i + 1)
        begin
            add1 add1x(.a(a[i]), .b(b[i]), .cin(cins[i]), .sum(sum[i]), .cout(couts[i]));
        end
    endgenerate

    assign cins[0] = cin;
    assign cout = couts[15];

endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

// Full adder module here
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);

endmodule
