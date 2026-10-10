package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Add" (Math): the output is the result of A + B.
	Inputs: `a` (default `0.0`), `b` (default `0.0`).
	Outputs: `output`.
**/
@name("Add")
@description("The output is the result of A + B")
@width(80)
@group("Math")
class Add extends Operation {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sginput(0.0) var b : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = a + b;
		}
	}
}