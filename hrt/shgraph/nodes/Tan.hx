package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Tangent" (Math): the output is the tangent of A.
	Inputs: `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Tangent")
@description("The output is the tangent of A")
@width(80)
@group("Math")
class Tan extends  ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = tan(a);
		}
	};

}