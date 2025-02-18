// A module that has no input and outputs a 1 or HIGH

module step_one (one); // module header with name and its arguments or signals or wire or I/O
    output one; // one is the name of the output wire

    assign one = 1'b1; // using assign statement to assign a constant bit value of one

endmodule

