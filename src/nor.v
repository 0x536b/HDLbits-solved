// a module that implements a NOR gate. A NOR gate is an OR gate with its output inverted. A NOR function needs two operators when written in Verilog.
// Verilog has separate bitwise-OR (|) and logical-OR (||) operators, like C. Since we're working with a one-bit here, it doesn't matter which we choose.

module top_module (
    input   A, B,
    output  out 
);
    assign out = ~( A | B ); // I prefer a space between variables and paratheses.
endmodule
