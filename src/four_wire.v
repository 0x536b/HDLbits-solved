// A module with 3 inputs and 4 outputs that behaves like wires that makes these connections:
// a -> w
// b -> x
// b -> y
// c -> z
// When you have multiple assign statements, the order in which they appear in the code does not matter. Unlike a programming language, assign statements ("continuous assignments") describe connections between things, not the action of copying a value from one thing to another.
// from : https://hdlbits.01xz.net/wiki/Wire4

module four_wire
(
    input a, b, c, // inputs of the same configuration, i.e. bitwidth, can be initialized in the same line seperated by a comman
    output w, x, y, z // outputs of the same configuration, i.e. bitwidth, can be initialized in the same line seperated by a comman
);

    assign x = b;
    assign z = c;
    assign y = b;
    assign w = a;

    // assign statements are continuous and parallel.
    // Unlike programming languages they are not executed line by line
    // they represent hardware, circuits and their connections in a textual form
    
    // If we're certain about the width of each signal, using 
	// the concatenation operator is equivalent and shorter:
	// assign {w,x,y,z} = {a,b,b,c};

endmodule
