package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "UV Scroll" (UV): scroll UV according to U & V speed.
	Inputs: `uv` (default `"calculatedUV"`), `uSpeed` (default `1.0`), `vSpeed` (default `1.0`), `time` (default `"global.time"`).
	Outputs: `output`.
**/
@name("UV Scroll")
@description("Scroll UV according to U & V speed")
@group("UV")
class UVScroll extends  ShaderNodeHxsl {

	static var SRC = {
		@sginput("calculatedUV") var uv : Vec2;
		@sginput(1.0) var uSpeed : Float;
		@sginput(1.0) var vSpeed : Float;
		@sginput("global.time") var time : Float;

		@sgoutput var output : Vec2;

		function fragment() {
			output = uv + vec2(uSpeed * time, vSpeed * time);
		}
	};

}
