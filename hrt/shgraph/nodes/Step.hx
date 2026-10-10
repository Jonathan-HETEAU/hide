package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Step" (Math): generate a step function by comparing a[i] to edge[i].
	Inputs: `edge` (default `0.0`), `fact` (default `0.0`).
	Outputs: `output`.
**/
@name("Step")
@description("Generate a step function by comparing a[i] to edge[i]")
@width(80)
@group("Math")
class Step extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var edge : Dynamic;
		@sginput(0.0) var fact : Dynamic;
		@sgoutput var output : Dynamic;
		function fragment() {
			output = step(edge, fact);
		}
	};
}