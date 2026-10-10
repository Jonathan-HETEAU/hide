package hrt.prefab;


/**
	A shader loaded by `ContextShared.loadShader`, with the initial values of its parameters.
**/
typedef ShaderDef = {
	/**
		The shader.
	**/
	var shader : hxsl.SharedShader;
	/**
		The initial values of the parameters.
	**/
	var inits : Array<{ variable : hxsl.Ast.TVar, value : Dynamic }>;
}

/**
	The shaders loaded, by path.
**/
typedef ShaderDefCache = Map<String, ShaderDef>;

/**
	The shared cache of the models, textures and shaders loaded by the prefabs.
**/
class Cache {
	static var inst : Cache;

	/**
		Override this with your own cache objets.
	**/
	public static dynamic function init() : Cache {
		var c = new Cache();
		c.modelCache = new h3d.prim.ModelCache();
		c.shaderDefCache = new ShaderDefCache();
		return c;
	}

	/**
		Creates an empty cache.
	**/
	public function new() {

	}

	/**
		Returns the cache (created with `init`).
	**/
	public static function get() : Cache {
		if (inst == null)
			inst = Cache.init();
		return inst;
	}

	/**
		The cache of the models, animations and textures.
	**/
	public var modelCache : h3d.prim.ModelCache = new h3d.prim.ModelCache();
	/**
		The cache of the shaders.
	**/
	public var shaderDefCache : ShaderDefCache = new ShaderDefCache();
}