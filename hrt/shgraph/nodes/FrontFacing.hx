package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Front facing" (Property): tells if pixel is front or back facing.
	Outputs: `output`.
**/
@name("Front facing")
@description("Tells if pixel is front or back facing")
@width(80)
@group("Property")
class FrontFacing extends ShaderNodeHxsl {

	static var SRC = {
		@sgoutput var output : Bool;
		function fragment() {
			output = frontFacing;
		}
	};
}