// You are given a module named mod_a that has 2 outputs and 4 inputs, in some order. You must connect the 6 ports by name to your top-level module's ports:
// Port in mod_a	Port in top_module
// output out1	out1
// output out2	out2
// input in1	a
// input in2	b
// input in3	c
// input in4	d
// 
// You are given the following module:
// 
// module mod_a ( output out1, output out2, input in1, input in2, input in3, input in4);

module top_module (
    input a,
    input b,
    input c,
    input d,
    output out1,
    output out2
);
    mod_a ins1(out1, out2, a, b, c, d); // this is module instantiation with position
endmodule


// example sub module mod_a
module mod_a
(
    output  o1, o2,
    input   a, b, c, d
);
    assign o1 = a & b;
    assign o2 = c & d;
endmodule
