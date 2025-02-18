// Vectors are used to group related signals using one name to make it more convenient to manipulate. For example, wire [7:0] w; declares an 8-bit vector named w that is functionally equivalent to having 8 separate wires.
// Notice that the declaration of a vector places the dimensions before the name of the vector, which is unusual compared to C syntax. However, the part select has the dimensions after the vector name as you would expect.

// the following module implements a circuit that has one 3-bit input, then outputs the same vector, and also splits it into three separate 1-bit outputs. Connect output o0 to the input vector's position 0, o1 to position 1, etc.

module top_module(
	input [2:0] vec, // declares a 3-bit vector or a singal or a bus
	output [2:0] outv,
	output o2,
	output o1,
	output o0
);
	
	assign outv = vec; // since both sink and source are 3-bits, you dont have mention index of the vector or bus

	// This is ok too: assign {o2, o1, o0} = vec; 
    // Cascading also allowed like this inside curly brackets. the bits are added. Three single-bit wire form a three bit bus

	assign o0 = vec[0];
	assign o1 = vec[1];
	assign o2 = vec[2];
	
endmodule

