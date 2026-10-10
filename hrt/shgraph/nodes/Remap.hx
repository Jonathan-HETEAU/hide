package hrt.shgraph.nodes;

/**
	The shader graph node "Remap" (Math): remap value in range [inMin, inMax] to range [outMin, outMax].
	Inputs: `input` (default `0.0`), `inMin` (default `0.0`), `inMax` (default `1.0`), `outMin` (default `0.0`), `outMax` (default `1.0`).
	Outputs: `output`.
**/
@name("Remap")
@description("Remap value in range [inMin, inMax] to range [outMin, outMax]")
@width(100)
@group("Math")
class Remap extends Operation {

	static var SRC = {
		@sginput(0.0) var input : Dynamic;
		@sginput(0.0) var inMin : Dynamic;
		@sginput(1.0) var inMax : Dynamic;
		@sginput(0.0) var outMin : Dynamic;
		@sginput(1.0) var outMax : Dynamic;

		@sgoutput var output : Dynamic;
		function fragment() {
			output = outMin + (outMax - outMin) * (input - inMin) / max(inMax - inMin, 1e-5);
		}
	}
}