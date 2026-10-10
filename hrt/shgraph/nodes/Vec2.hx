package hrt.shgraph.nodes;

import hxsl.Types.Vec;
import hxsl.*;

using hxsl.Ast;

/**
	The shader graph node "Vec2" (Channel): create a vector of size 2 from 2 floats.
	Inputs: `x` (default `0.0`), `y` (default `0.0`).
	Outputs: `output`.
**/
@name("Vec2")
@description("Create a vector of size 2 from 2 floats")
@group("Channel")
@width(80)
class Vec2 extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var x : Float;
		@sginput(0.0) var y : Float;
		@sgoutput var output : Vec2;

		function fragment() {
			output = vec2(x,y);
		}
	}
}