package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Smooth Step" (Math): the smooth Hermite interpolation of `fact` between the edges A and B (`smoothstep`).
	Inputs: `a` (default `0.0`), `b` (default `0.0`), `fact`.
	Outputs: `output`.
**/
@name("Smooth Step")
@description("Linear interpolation between A and B using Mix")
@width(100)
@group("Math")
class SmoothStep extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var a : Dynamic;
		@sginput(0.0) var b : Dynamic;
		@sginput var fact : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = smoothstep(a,b, fact);
		}
	};

}