package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Max" (Math): the output is the maximum between A and B.
	Inputs: `a` (default `0.0`), `b` (default `0.0`).
	Outputs: `output`.
**/
@name("Max")
@description("The output is the maximum between A and B")
@width(80)
@group("Math")
class Max extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sginput(0.0) var b : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = max(a,b);
		}
	};

}