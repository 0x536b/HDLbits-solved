// Vectors are used to group related signals using one name to make it more convenient to manipulate. For example, wire [7:0] w; declares an 8-bit vector named w that is equivalent to having 8 separate wires.

// Vectors must be declared:
// type [upper:lower] vector_name;
// type specifies the datatype of the vector. This is usually wire or reg. If you are declaring a input or output port, the type can additionally include the port type (e.g., input or output) as well. Some examples:
// 
// wire [7:0] w;         // 8-bit wire
// reg  [4:1] x;         // 4-bit reg
// output reg [0:0] y;   // 1-bit reg that is also an output port (this is still a vector)
// input wire [3:-2] z;  // 6-bit wire input (negative ranges are allowed)
// output [3:0] a;       // 4-bit output wire. Type is 'wire' unless specified otherwise.
// wire [0:7] b;         // 8-bit wire where b[0] is the most-significant bit.

// Implicit nets are often a source of hard-to-detect bugs. In Verilog, net-type signals can be implicitly created by an assign statement or by attaching something undeclared to a module port. Implicit nets are always one-bit wires and causes bugs if you had intended to use a vector. Disabling creation of implicit nets can be done using the `default_nettype none directive.
// wire [2:0] a, c;   // Two vectors
// assign a = 3'b101;  // a = 101
// assign b = a;       // b =   1  implicitly-created wire
// assign c = b;       // c = 001  <-- bug
// my_module i1 (d,e); // d and e are implicitly one-bit wide if not declared.
// This could be a bug if the port was intended to be a vector.

// The part-select operator can be used to access a portion of a vector:
// 
// w[3:0]      // Only the lower 4 bits of w
// x[1]        // The lowest bit of x
// x[1:1]      // ...also the lowest bit of x
// z[-1:-2]    // Two lowest bits of z
// b[3:0]      // Illegal. Vector part-select must match the direction of the declaration.
// b[0:3]      // The *upper* 4 bits of b.
// assign w[3:0] = b[0:3];    // Assign upper 4 bits of b to lower 4 bits of w. w[3]=b[0], w[2]=b[1], etc.

// example code
// a combinational circuit that splits an input half-word (16 bits, [15:0] ) into lower [7:0] and upper [15:8] bytes.

module top_module (
	input [15:0] in,
	output [7:0] out_hi,
	output [7:0] out_lo
);
	
	assign out_hi = in[15:8];
	assign out_lo = in[7:0];
	
	// Concatenation operator also works: assign {out_hi, out_lo} = in;
	
endmodule
