package hrt.shader;

/**
	Multiplies the color of the particles by a gradient over their life.
**/
class ParticleColorLife extends hxsl.Shader {

	static var SRC = {
		@:import hrt.shader.BaseEmitter;

		@param var gradient : Sampler2D;

		function fragment() {
			pixelColor.rgb *= gradient.get(vec2(particleLife/particleLifeTime, 0.5)).rgb;
		}
	};
}