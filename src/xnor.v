// a module that implements an XNOR gate.
// The bitwise-XOR operator is ^. There is no logical-XOR operator.


module top_module 
(
    input   a, b, 
    output  out
);
    assign out = ~(a ^ b);
endmodule
