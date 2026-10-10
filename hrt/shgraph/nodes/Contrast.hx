package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Contrast" (Math): adjusts the contrast of input by the amount given, around the pivot value. An amount of one results in unaltered content.
	Inputs: `a` (default `0.0`), `amount` (default `1.0`), `pivot` (default `0.5`).
	Outputs: `output`.
**/
@name("Contrast")
@description("Adjusts the contrast of input by the amount given, around the pivot value. An amount of one results in unaltered content")
@width(80)
@group("Math")
class Contrast extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sginput(1.0) var amount : Float;
		@sginput(0.5) var pivot : Float;

		@sgoutput var output : Dynamic;
		function fragment() {
			output = (a - pivot) * amount + pivot;
		}
	};
}
