package hrt.shgraph.nodes;

/**
	The shader graph node "Polar Coordinates" (UV): convert UV in carthesian coordinates to polar coordinates UV. output X is the distance from the center and output Y is the angle in radient around that point.
	Inputs: `uv` (default `calculatedUV`), `center` (default `0.5`), `radialScale` (default `1.0`), `lengthScale` (default `1.0`).
	Outputs: `output`.
**/
@name("Polar Coordinates")
@description("Convert UV in carthesian coordinates to polar coordinates UV. output X is the distance from the center and output Y is the angle in radient around that point")
@width(130)
@group("UV")
class PolarCoordinates extends Operation {

	static var SRC = {
		@sginput(calculatedUV) var uv : Vec2;
		@sginput(0.5) var center : Vec2;
        @sginput(1.0) var radialScale : Float;
        @sginput(1.0) var lengthScale : Float;

		@sgoutput var output : Vec2;
		function fragment() {
            var delta = uv - center;
            var r = length(delta) * 2 * radialScale;
            var a = atan(delta.y, delta.x) * 1.0 / 6.28 * lengthScale;
            output.x = r;
            output.y = a;
		}
	}
}