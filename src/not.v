// a module that implements a NOT gate.
// Verilog has separate bitwise-NOT (~) and logical-NOT (!) operators, like C. Since we're working with a one-bit here, it doesn't matter which we choose.


module not_gate( input A, output B); // for smaller number of ports of the module, a single header should be okay
    assign B = ~A;
endmodule
