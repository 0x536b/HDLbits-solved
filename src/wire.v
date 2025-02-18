// A module that pass in to out. A wire module.
// All it does is connect the in and out

module just_wire // module keyword is required for module declaration
(
    input   in, // wires in verilog are directional. Hence you specify input or output. This needs a comma here to specify more wires in a module
    output  out // I want to align all the names of the wire in the same indentation
); // semi colon is important at the end of the module declaration
    
    assign out = in;    // "in" is the source and out is the sink. The assign keyword is a continuous assigment statement.
                        // that means it is assigned all the time and not a one time thing. The value of wire "in" is drives the wire "out" 

    // Note that wires are directional, so "assign in = out" is not equivalent.

endmodule // endmodule keyword tells that the module declaration is done. There is no semicolon here.
