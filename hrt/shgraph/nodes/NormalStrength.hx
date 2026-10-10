package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Normal Strength" (Math): adjusts the strength of a tangent space normal. A strength of one results in unaltered normal.
	Inputs: `normal` (default `0.0`), `strength` (default `1.0`).
	Outputs: `output`.
**/
@name("Normal Strength")
@description("Adjusts the strength of a tangent space normal. A strength of one results in unaltered normal")
@width(120)
@group("Math")
class NormalStrength extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var normal : Vec3;
		@sginput(1.0) var strength : Float;
		@sgoutput var output : Vec3;
		function fragment() {
			output = vec3(normal.xy * strength, mix(1.0, normal.z, saturate(strength)));
		}
	};
}
