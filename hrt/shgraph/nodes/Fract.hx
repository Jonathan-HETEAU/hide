package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Fract" (Math): the fractional part of X.
	Inputs: `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Fract")
@description("The fractional part of X")
@width(80)
@group("Math")
class Fract extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = fract(a);
		}
	};

}