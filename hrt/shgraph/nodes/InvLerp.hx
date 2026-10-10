package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "InvLerp" (Math): inverse linear interpolation : returns a value between 0 and 1 that indicated where value lies between A and B (0 <= A, 1 >= B).
	Inputs: `a` (default `0.0`), `b` (default `1.0`), `value` (default `0.5`).
	Outputs: `output`.
**/
@name("InvLerp")
@description("Inverse linear interpolation : returns a value between 0 and 1 that indicated where value lies between A and B (0 <= A, 1 >= B)")
@width(80)
@group("Math")
@alias("InverseLerp", "Unmix")
class InvLerp extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sginput(1.0) var b : Dynamic;
		@sginput(0.5) var value : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = saturate((value - a) / (b - a));
		}
	};

}
