package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "ScreenToWorld" (Property): transform a position from screen space to world space.
	Inputs: `input`.
	Outputs: `output`.
**/
@name("ScreenToWorld")
@description("Transform a position from screen space to world space")
@group("Property")
class ScreenToWorld extends ShaderNodeHxsl {

	static var SRC = {
		@sginput var input : Vec3;
		@sgoutput var output : Vec3;

		@global var camera : { var inverseViewProj : Mat4; };

		function fragment() {
			var result = vec4(input, 1.0) * camera.inverseViewProj;
			output = result.xyz / result.w;
		}
	};
}
