package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "UV To Screen" (UV): converts texture coordinates to screen coordinates (`-1` to `1`).
	Inputs: `uv`.
	Outputs: `output`.
**/
@name("UV To Screen")
@description("")
@width(100)
@group("UV")
class UvToScreen extends ShaderNodeHxsl {

	static var SRC = {
		@sginput var uv : Vec2;

		@sgoutput var output : Vec2;

		function fragment() {
			output = uvToScreen(uv);
		}
	};

}