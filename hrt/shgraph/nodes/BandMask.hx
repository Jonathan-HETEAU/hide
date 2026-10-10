package hrt.shgraph.nodes;

using hxsl.Ast;

/**
	The shader graph node "Band Mask" (UV): returns 1 if value is within the band indexed. Otherwise returns 0.
	Inputs: `value` (default `0.0`), `index` (default `0.0`), `maxBandCount` (default `0.0`).
	Outputs: `output`.
**/
@name("Band Mask")
@description("Returns 1 if value is within the band indexed. Otherwise returns 0.")
@group("UV")
class BandMask extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var value : Float;
		@sginput(0.0) var index : Float;
		@sginput(0.0) var maxBandCount : Float;

		@sgoutput var output : Float;

		function fragment() {
			var curBand = clamp(int(value * maxBandCount), 0, int(maxBandCount));
			output = curBand == int(index) ? 1.0 : 0.0;
		}
	};

}
