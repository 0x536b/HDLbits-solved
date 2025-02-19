// A module that builds a 1-bit 2-to-1 mux

module top_module
(
    input   a, b, sel,
    output  out
);
    
    assign out = sel ? b : a; // here I used a conditional statement. The ternary operatio (condition ? if_true : if_false) is used.
    
    // or another example
    // assign out = (sel & b) | (~sel & a);	// Mux expressed as AND and OR
endmodule
