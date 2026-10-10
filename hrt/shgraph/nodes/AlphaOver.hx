package hrt.shgraph.nodes;

/**
	The shader graph node "Alpha Over" (Channel): blends between A and B based on A alpha * opacity.
	Inputs: `a` (default `0.0`), `b` (default `0.0`), `opacity` (default `1.0`).
	Outputs: `output`.
**/
@name("Alpha Over")
@description("Blends between A and B based on A alpha * opacity")
@width(100)
@group("Channel")
class AlphaOver extends Operation {

	static var SRC = {
		@sginput(0.0) var a : Vec4;
		@sginput(0.0) var b : Vec4;
        @sginput(1.0) var opacity : Float;
		@sgoutput var output : Vec4;
		function fragment() {
            var alpha = opacity * a.a;
			output.rgb = a.rgb * alpha + b.rgb * (1.0 - alpha);
            output.a = clamp(alpha + b.a,0.0, 1.0);
		}
	}
}