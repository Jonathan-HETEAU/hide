package hrt.shgraph.nodes;

import hxsl.Types.Vec;
import hxsl.*;

using hxsl.Ast;

/**
	The shader graph node "Combine" (Channel): create a vector of size 4 from 4 floats.
	Inputs: `r` (default `0.0`), `g` (default `0.0`), `b` (default `0.0`), `a` (default `0.0`).
	Outputs: `output`.
**/
@name("Combine")
@description("Create a vector of size 4 from 4 floats")
@group("Channel")
@width(80)
class Combine extends ShaderNodeHxsl {

	static var SRC = {
		@sginput(0.0) var r : Float;
		@sginput(0.0) var g : Float;
		@sginput(0.0) var b : Float;
		@sginput(0.0) var a : Float;
		@sgoutput var output : Vec4;

		function fragment() {
			output = vec4(r,g,b,a);
		}
	}
}