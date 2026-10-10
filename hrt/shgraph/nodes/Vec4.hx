package hrt.shgraph.nodes;

import hxsl.Types.Vec;
import hxsl.*;

using hxsl.Ast;

/**
	The shader graph node "Vec4" (Channel): create a vector of size 4 from 4 floats.
	Inputs: `x` (default `0.0`), `y` (default `0.0`), `z` (default `0.0`), `w` (default `0.0`).
	Outputs: `output`.
**/
@name("Vec4")
@description("Create a vector of size 4 from 4 floats")
@group("Channel")
@width(80)
class Vec4 extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var x : Float;
		@sginput(0.0) var y : Float;
		@sginput(0.0) var z : Float;
		@sginput(0.0) var w : Float;

		@sgoutput var output : Vec4;

		function fragment() {
			output = vec4(x,y,z,w);
		}
	}
}