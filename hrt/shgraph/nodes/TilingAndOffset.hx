package hrt.shgraph.nodes;

/**
	The shader graph node "Tiling and Offset" (UV): tiles and offsets the value of input UV by the inputs Tiling and Offset respectively. Output is uv * tiling + offset.
	Inputs: `uv` (default `calculatedUV`), `tiling` (default `1.0`), `offset` (default `0.0`).
	Outputs: `output`.
**/
@name("Tiling and Offset")
@description("Tiles and offsets the value of input UV by the inputs Tiling and Offset respectively. Output is uv * tiling + offset")
@width(120)
@group("UV")
class TilingAndOffset extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(calculatedUV) var uv : Vec2;
		@sginput(1.0) var tiling : Vec2;
		@sginput(0.0) var offset : Vec2;

		@sgoutput var output : Vec2;

		function fragment() {
			output = uv * tiling + offset;
		}
	};

}