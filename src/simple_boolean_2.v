// A module that implements the following functions
// out = f(a,b,c,d) = ((a & b) | (c & d))
// out_n = f(a,b,c,d) = ~((a & b) | (c & d))
// out_n is just a NOT of out
// You can directly type the boolean function or you can use internal wires to do it
// this method uses the internal wire method


module top_module
(
    input a, b, c, d,
    output out, out_n 
);
    wire a_AND_b, c_AND_d, ab_OR_cd; // you can get creative with names. here im just english translation of the boolean function
    
    assign a_AND_b = a & b; // this represents (a & B)
    assign c_AND_d = c & d; // this represnts (c & d)
    assign out = a_AND_b | c_AND_d; // this represents ((a & b) | (c & d))
    assign out_n = ~out; // this represents ~((a & b) | (c & d))

endmodule

