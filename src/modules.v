// By now, you're familiar with a module, which is a circuit that interacts with its outside through input and output ports. Larger, more complex circuits are built by composing bigger modules out of smaller modules and other pieces (such as assign statements and always blocks) connected together. This forms a hierarchy, as modules can contain instances of other modules.

// The hierarchy of modules is created by instantiating one module inside another, as long as all of the modules used belong to the same project (so the compiler knows where to find the module). The code for one module is not written inside another module's body (Code for different modules are not nested).

// You may connect signals to the module by port name or port position. For extra practice, try both methods.

// There are two commonly-used methods to connect a wire to a port: by position or by name.

// For example if mod_a(input in1, input in2, output out)
// by position mod_a instance1 ( wa, wb, wc );
// by name mod_a instance2 ( .out(wc), .in1(wa), .in2(wb) ); // I prefer this method. Its clean and less prone to bugs

// top module which instantiates the mod_a
module top_module (
	input a,
	input b,
	output out
);

	// Create an instance of "mod_a" named "inst1", and connect ports by name:
	mod_a inst1 ( 
		.in1(a), 	// Port"in1"connects to wire "a"
		.in2(b),	// Port "in2" connects to wire "b"
		.out(out)	// Port "out" connects to wire "out" 
				// (Note: mod_a's port "out" is not related to top_module's wire "out". 
				// It is simply coincidence that they have the same name)
	);

/*
	// Create an instance of "mod_a" named "inst2", and connect ports by position:
	mod_a inst2 ( a, b, out );	// The three wires are connected to ports in1, in2, and out, respectively.
*/
	
endmodule

// an example module implementing AND gate
module mod_a ( input in1, input in2, output out );
    assign out = in1 & in2;
endmodule
