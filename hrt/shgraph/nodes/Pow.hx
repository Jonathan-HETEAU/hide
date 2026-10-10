package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Power" (Math): the output is the result of x ^ b.
	Inputs: `a` (default `0.0`), `b` (default `2.0`).
	Outputs: `output`.
**/
@name("Power")
@description("The output is the result of x ^ b")
@width(80)
@group("Math")
class Pow extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sginput(2.0) var b : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = pow(a,b);
		}
	};

}