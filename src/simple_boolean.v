// A module that implements the following functions
// out = f(a,b,c,d) = ((a & b) | (c & d))
// out_n = f(a,b,c,d) = ~((a & b) | (c & d))
// out_n is just a NOT of out
// You can directly type the boolean function or you can use internal wires to do it
// this module uses direct boolean-method

module top_module
(
    input a, b, c, d,
    output out, out_n 
);

    assign out = ((a & b) | (c & d)); 
    assign out_n = ~out;
endmodule

