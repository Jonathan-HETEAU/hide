package hrt.prefab.rfx;

/**
	Draws a colored border around the screen.
**/
class BorderShader extends h3d.shader.ScreenShader {
	static var SRC = {
		@param var size:Float;
		@param var color:Vec3;
		@param var alpha: Float;

		function fragment() {
			if ( calculatedUV.x > 1.0 - size || calculatedUV.x < size || calculatedUV.y > 1.0 - size || calculatedUV.y < size )
				pixelColor.rgba = vec4(color, alpha);
		}
	};
}

/**
	Draws a colored border around the screen.
**/
class Border extends RendererFX {
	/**
		The screen pass.
	**/
	public var pass : h3d.pass.ScreenFx<BorderShader>;
	/**
		The shader.
	**/
	public var shader : BorderShader;

	public function new(parent: Prefab, shared: ContextShared) {
		super(parent, shared);
		shader = new BorderShader();
		setParams();
		pass = new h3d.pass.ScreenFx(shader);
		pass.pass.setBlendMode(Alpha);
	}

	/**
		Sets the size (relative to the screen), color (RGB) and alpha of the border.
	**/
	public function setParams( size = 0.1, color: Int = 0, alpha = 1.0) {
		shader.size = size;
		shader.alpha = alpha;
		shader.color = h3d.Vector.fromColor(color);
	}

	public override function begin( r : h3d.scene.Renderer, step : h3d.impl.RendererFX.Step ) {
		if ( step == AfterTonemapping )
			pass.render();
	}

	override function edit2( ctx : hrt.prefab.EditContext2 ) {
		super.edit2(ctx);
	}
}