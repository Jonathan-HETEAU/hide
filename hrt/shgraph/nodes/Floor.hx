package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Floor" (Math): the nearest integer less than or equal to X.
	Inputs: `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Floor")
@description("The nearest integer less than or equal to X")
@width(80)
@group("Math")
class Floor extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = floor(a);
		}
	};

}