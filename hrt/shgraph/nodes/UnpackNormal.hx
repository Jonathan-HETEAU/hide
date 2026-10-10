package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Unpack Normal" (Channel): unpacks a normal stored in a color.
	Inputs: `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Unpack Normal")
@description("")
@width(120)
@group("Channel")
class UnpackNormal extends  ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Vec4;
		@sgoutput var output : Vec3;
		function fragment() {
			output = unpackNormal(a);
		}
	};

}