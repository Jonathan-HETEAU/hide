package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Rad to Deg" (Math): convert an angle in rad to an angle in degrees.
	Inputs: `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Rad to Deg")
@description("Convert an angle in rad to an angle in degrees")
@width(80)
@group("Math")
class Rad2Deg extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = a / 3.141592 * 180.0;
		}
	};
}