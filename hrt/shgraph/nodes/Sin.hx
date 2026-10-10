package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Sinus" (Math): the output is the sinus of A.
	Inputs: `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Sinus")
@description("The output is the sinus of A")
@width(80)
@group("Math")
class Sin extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = sin(a);
		}
	};

}