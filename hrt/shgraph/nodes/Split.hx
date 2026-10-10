package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Split" (Channel): split all components of a vector into floats.
	Inputs: `rgba`.
	Outputs: `r`, `g`, `b`, `a`.
**/
@name("Split")
@description("Split all components of a vector into floats")
@group("Channel")
@width(80)
class Split extends ShaderNodeHxsl {

	static var SRC = {
		@sginput var rgba : Vec4;
		@sgoutput var r : Float;
		@sgoutput var g : Float;
		@sgoutput var b : Float;
		@sgoutput var a : Float;
		function fragment() {
			r = rgba.r;
			g = rgba.g;
			b = rgba.b;
			a = rgba.a;
		}
	};

}