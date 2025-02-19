// You are given a module my_dff with two inputs and one output (that implements a D flip-flop). Instantiate three of them, then chain them together to make a shift register of length 3. The clk port needs to be connected to all instances.
// The module provided to you is: module my_dff ( input clk, input d, output q );
// Note that to make the internal connections, you will need to declare some wires. Be careful about naming your wires and module instances: the names must be unique.

module top_module (
	input clk,
	input d,
	output q
);

	wire a, b;	// Create two wires. I called them a and b.

	// Create three instances of my_dff, with three different instance names (d1, d2, and d3).
	// Connect ports by position: ( input clk, input d, output q)
	my_dff d1 ( clk, d, a );
	my_dff d2 ( clk, a, b );
	my_dff d3 ( clk, b, q );

endmodule

module my_dff
(
    input clk, d, 
    output reg q
);
    always @(posedge clk)
    begin
        q <= d;
    end
endmodule
