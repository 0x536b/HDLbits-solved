// a module that implements an AND gate.
// Verilog has separate bitwise-AND (&) and logical-AND (&&) operators, like C. Since we're working with a one-bit here, it doesn't matter which we choose.

module top_module // just name the only module in the file as top_module or top
(
    input   A, B, // AND is two-input operation
    output  out
);
    assign out = A & B;
endmodule
