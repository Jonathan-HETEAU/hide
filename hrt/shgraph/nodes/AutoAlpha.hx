package hrt.shgraph.nodes;

/**
	The shader graph node "Auto Alpha" (Channel): set the alpha of the given vector to max(rgb) * scale.
	Inputs: `rgb` (default `0.0`), `scale` (default `1.0`).
	Outputs: `rgba`.
**/
@name("Auto Alpha")
@description("Set the alpha of the given vector to max(rgb) * scale")
@width(80)
@group("Channel")
class AutoAlpha extends Operation {

	static var SRC = {
		@sginput(0.0) var rgb : Vec3;
		@sginput(1.0) var scale : Float;

		@sgoutput var rgba : Vec4;
		function fragment() {
			rgba = vec4(rgb, saturate((max(max(rgb.r, rgb.g), rgb.b)) * scale));
		}
	}
}