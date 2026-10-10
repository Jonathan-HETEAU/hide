package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Strip Alpha" (Channel): separate the rgb and a components of an rgba vector.
	Inputs: `rgba`.
	Outputs: `rgb`, `a`.
**/
@name("Strip Alpha")
@description("Separate the rgb and a components of an rgba vector")
@group("Channel")
@width(100)
class StripAlpha extends ShaderNodeHxsl {

	static var SRC = {
		@sginput var rgba : Vec4;
		@sgoutput var rgb : Vec3;
		@sgoutput var a : Float;

		function fragment() {
			rgb = rgba.rgb;
			a = rgba.a;
		}
	};

}