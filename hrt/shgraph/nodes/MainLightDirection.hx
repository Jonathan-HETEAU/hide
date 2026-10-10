package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "MainLightDirection" (Property): get the main light direction.
	Outputs: `output`.
**/
@name("MainLightDirection")
@description("Get the main light direction")
@group("Property")
class MainLightDirection extends ShaderNodeHxsl {

	static var SRC = {
		@sgoutput var output : Vec3;

		@global var mainLightDir : Vec3;

		function fragment() {
			output = mainLightDir;
		}
	};
}
