package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Length" (Math): the length of A.
	Inputs: `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Length")
@description("")
@width(80)
@group("Math")
class Length extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sgoutput var output : Float;
		function fragment() {
			output = length(a);
		}
	};

}