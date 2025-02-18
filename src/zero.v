// A module that has no input and outputs a 0 or bit- or LOW
// This uses a new Verilog-2001 module declaration

module zero// module header with name and its arguments or signals or wire or I/O
(
    output zero_out // just one output. The new verilog-2001 style decalres its I/Os like this 
    // also names wire names cant be the same as the module name ! 
);

    assign zero_out = 1'b0; // using assign statement to assign a constant bit value of zero

endmodule

