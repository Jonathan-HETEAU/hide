package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Arc Sinus" (Math): the output is the arc sinus of A.
	Inputs: `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Arc Sinus")
@description("The output is the arc sinus of A")
@width(80)
@group("Math")
class Asin extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = asin(a);
		}
	};

}