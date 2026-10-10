package hrt.shgraph;

/**
	A global variable available to the shader graph nodes (see `Variables.Globals`).
**/
enum abstract Global(Int) to Int {
	/**
		`pixelColor`: the color of the pixel.
	**/
	var PixelColor;
	/**
		The RGB of the pixel color (not in `Variables.Globals`).
	**/
	var PixelColorColor;
	/**
		The alpha of the pixel color (not in `Variables.Globals`).
	**/
	var PixelColorAlpha;
	/**
		`global.time`: the time, in seconds.
	**/
	var Time;
	/**
		`global.pixelSize`: the size of a pixel.
	**/
	var PixelSize;
	/**
		`global`: the global variables.
	**/
	var Global;

	/**
		`calculatedUV`: the texture coordinates computed by the shaders.
	**/
	var CalculatedUV;

	/**
		`input`: the vertex inputs.
	**/
	var Input;
	/**
		`input.uv`: the first texture coordinates.
	**/
	var UV;

	/**
		`relativePosition`: the position in the space of the object.
	**/
	var RelativePosition;
	/**
		`transformedPosition`: the position in world space.
	**/
	var TransformedPosition;
	/**
		`projectedPosition`: the projected position.
	**/
	var ProjectedPosition;

	/**
		`input.normal`: the normal in the space of the object.
	**/
	var Normal;
	/**
		`fakeNormal`: the replacement of the normal in the previews.
	**/
	var FakeNormal;	// used as replacement for normal in previews
	/**
		`transformedNormal`: the normal in world space.
	**/
	var TransformedNormal;

	/**
		`depth`: the depth.
	**/
	var Depth;
	/**
		`metalness`: the PBR metalness.
	**/
	var Metalness;
	/**
		`roughness`: the PBR roughness.
	**/
	var Roughness;
	/**
		`emissive`: the PBR emissive.
	**/
	var Emissive;
	/**
		`occlusion`: the PBR occlusion.
	**/
	var Occlusion;

	/**
		The parameter selecting the node preview.
	**/
	var PreviewSelect;
	/**
		`_previewColor`: the color of a node preview.
	**/
	var PreviewColor;

	/**
		`camera`: the camera variables.
	**/
	var Camera;
	/**
		`camera.position`: the position of the camera.
	**/
	var CameraPosition;

	// Particles
	/**
		`particleLife`: the age of the particle.
	**/
	var ParticleLife;
	/**
		`particleLifeTime`: the lifetime of the particle.
	**/
	var ParticleLifeTime;
	/**
		`particleRandom`: the random value of the particle.
	**/
	var ParticleRandom;

	// Internal Shadergraph vars
	/**
		`_sg_out_color`: the RGB output of the graph.
	**/
	var SGPixelColor;
	/**
		`_sg_out_alpha`: the alpha output of the graph.
	**/
	var SGPixelAlpha;

	/**
		`emitterPosition`: the position of the particle emitter.
	**/
	var EmitterPosition;

	/**
		`global.screenShaderInput`: the input texture of a screen shader graph.
	**/
	var SourceTexture;

	/**
		`input.uv2`: the second texture coordinates.
	**/
	var UV2;
	/**
		`input.uv3`: the third texture coordinates.
	**/
	var UV3;
	/**
		`input.uv4`: the fourth texture coordinates.
	**/
	var UV4;
}

/**
	The kind of a global variable.
**/
enum VariableKind {
	/**
		A HXSL variable of kind `kind`, in the struct `parent` if set, with the default value `def`.
	**/
	KVar(kind: hxsl.Ast.VarKind, ?parent: Global, ?def: Dynamic);
	/**
		Components of another global.
	**/
	KSwizzle(global: Global, swiz: Array<hxsl.Ast.Component>);
}

/**
	The definition of a global variable.
**/
typedef GlobalInfo = {
	/**
		The HXSL type.
	**/
	var type : hxsl.Ast.Type;
	/**
		The HXSL name.
	**/
	var name : String;
	/**
		The kind of variable.
	**/
	var varkind : VariableKind;
	/**
		The initial value, or `null`.
	**/
	var ?__init__ : TExpr;
	/**
		The cached full path.
	**/
	var ?_fullNameCache : String;
};
/**
	The global variables of the shader graphs.
**/
class Variables {
	/**
		The name of the parameter selecting the node preview.
	**/
	public static var previewSelectName = "previewSelect_SG";

	/**
		The definitions of the globals, by `Global`.
	**/
	public static var Globals : Array<GlobalInfo> = {
		var g : Array<GlobalInfo> = [];

		g[PixelColor] 			= {type: TVec(4, VFloat), 	name: "pixelColor", 	varkind: KVar(Local)};

		g[CalculatedUV] 		= {type: TVec(2, VFloat), 	name: "calculatedUV", varkind: KVar(Var)};

		g[Time] 				= {type: TFloat, 	name: "time", 			varkind: KVar(Global, Global)};
		g[PixelSize]			= {type: TVec(2, VFloat), 	name: "pixelSize", 		varkind: KVar(Global, Global)};
		g[Global] 				= {type: TVoid, 	name: "global", 		varkind: KVar(Global)};

		g[Input]			= {type: TVoid, name: "input", varkind: KVar(Input)};
		g[UV] 					= {type: TVec(2, VFloat), 	name: "uv", varkind: KVar(Input, Input)};
		g[UV2] 					= {type: TVec(2, VFloat), 	name: "uv2", varkind: KVar(Input, Input)};
		g[UV3] 					= {type: TVec(2, VFloat), 	name: "uv3", varkind: KVar(Input, Input)};
		g[UV4] 					= {type: TVec(2, VFloat), 	name: "uv4", varkind: KVar(Input, Input)};
		g[RelativePosition]			= {type: TVec(3, VFloat), name: "relativePosition", varkind: KVar(Local)};
		g[TransformedPosition]		= {type: TVec(3, VFloat), name: "transformedPosition", varkind: KVar(Local)};
		g[ProjectedPosition]		= {type: TVec(4, VFloat), name: "projectedPosition", varkind: KVar(Local)};

		g[Normal] 				= {type: TVec(3, VFloat), name: "normal", varkind: KVar(Input, Input)};
		g[FakeNormal] 			= {type: TVec(3, VFloat), name: "fakeNormal", varkind: KVar(Local)};
		g[TransformedNormal] 	= {type: TVec(3, VFloat), name: "transformedNormal", varkind: KVar(Local)};

		g[Depth] 				= {type: TFloat, name: "depth", varkind: KVar(Local)};
		g[Metalness] 				= {type: TFloat, name: "metalness", varkind: KVar(Local)};
		g[Roughness] 				= {type: TFloat, name: "roughness", varkind: KVar(Local)};
		g[Emissive] 				= {type: TFloat, name: "emissive", varkind: KVar(Local)};
		g[Occlusion]			= {type: TFloat, name: "occlusion", varkind: KVar(Local)};

		g[PreviewSelect]		= {type: TInt, 		name: previewSelectName, varkind: KVar(Param,null, -1)};
		g[PreviewColor] 		= {type: TVec(4,VFloat), name: "_previewColor", varkind: KVar(Local)};


		g[SGPixelColor] 		= {type: TVec(3, VFloat), 	name: "_sg_out_color", varkind: KSwizzle(PixelColor, [X,Y,Z])};
		g[SGPixelAlpha] 		= {type: TFloat, 	name: "_sg_out_alpha", 		varkind: KSwizzle(PixelColor, [W])};

		g[ParticleLife]			= {type: TFloat, name: "particleLife", varkind: KVar(Local)};
		g[ParticleLifeTime]		= {type: TFloat, name: "particleLifeTime", varkind: KVar(Local)};
		g[ParticleRandom] 		= {type: TFloat, name: "particleRandom", varkind: KVar(Local)};

		g[Camera] = {type: TVoid, name: "camera", varkind: KVar(Local)};
		g[CameraPosition] = {type: TVec(3, VFloat), name: "position", varkind: KVar(Local, Camera)};

		g[EmitterPosition] = {type: TVec(3, VFloat), name: "emitterPosition", varkind: KVar(Local, null), __init__: AstTools.makeVec([0.0,0.0,0.0])};

		g[SourceTexture] = {type: TSampler(T2D, false), name: "screenShaderInput", varkind: KVar(Global, Global)};

		g;
	};

	/**
		Returns the full path of a global, as `parent.name`.
	**/
	public static function getFullPath(g: GlobalInfo) : String {
		if (g._fullNameCache != null)
			return g._fullNameCache;
		var path = g.name;
		switch (g.varkind) {
			case KVar(_, parent, _):
				if (parent != null)
					path = getFullPath(Globals[cast parent]) + "." + path;
			case KSwizzle(_, _):
				// we do nothing for swizzles as they are temporary local variables
		}
		g._fullNameCache = path;
		return path;
	}

	/**
		Returns the globals by full path.
	**/
	public static function getGlobalNameMap() {
		static var GlobalNameMap : Map<String, Global>;
		if (GlobalNameMap == null)
			GlobalNameMap = [
				for (id => g in Globals) if (g != null) getFullPath(g) => (cast id:Global)
			];
		return GlobalNameMap;
	}

}