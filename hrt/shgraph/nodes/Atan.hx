package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Arc Tangent" (Math): the output is the arc tangent of A.
	Inputs: `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Arc Tangent")
@description("The output is the arc tangent of A")
@width(80)
@group("Math")
class Atan extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = atan(a);
		}
	};
}