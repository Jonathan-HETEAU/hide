package hrt.shader;

/**
	Multiplies the color of the particles by a random color of a gradient.
**/
class ParticleColorRandom extends hxsl.Shader {

	static var SRC = {
		@:import hrt.shader.BaseEmitter;

		@param var gradient : Sampler2D;
		
		function fragment() {
			pixelColor.rgb *= gradient.get(vec2(particleRandom, 0.5)).rgb;
		}
	};
}