package hide.prefab.terrain;

/**
	Terrain sculpting shader: moves the height towards a target height with the stroke strength.
**/
class SetHeight extends h3d.shader.ScreenShader {

	static var SRC = {

		@param var prevHeight : Sampler2D;
		@param var strengthTex : Sampler2D;
		@param var targetHeight : Float;

		function fragment() {
			var height = prevHeight.get(calculatedUV).r;
			var strength = strengthTex.get(calculatedUV).r;
			pixelColor = vec4(mix(height, targetHeight, clamp(strength,0,1)));
		}
	}
}
