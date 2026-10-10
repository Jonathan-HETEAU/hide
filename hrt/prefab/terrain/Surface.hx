package hrt.prefab.terrain;

/**
	A material of the terrain: textures with their placement and height blending.
**/
class Surface {
	/**
		The albedo texture.
	**/
	public var albedo : h3d.mat.Texture;
	/**
		The normal texture.
	**/
	public var normal : h3d.mat.Texture;
	/**
		The PBR texture.
	**/
	public var pbr : h3d.mat.Texture;
	/**
		The tiling of the textures.
	**/
	public var tilling = 1.0;
	/**
		The offset of the textures.
	**/
	public var offset : h3d.Vector;
	/**
		The rotation of the textures, in degrees.
	**/
	public var angle = 0.0;
	/**
		The minimum height of the height blending.
	**/
	public var minHeight = 0.0;
	/**
		The maximum height of the height blending.
	**/
	public var maxHeight = 1.0;

	/**
		Creates a surface.
	**/
	public function new( ?albedo : h3d.mat.Texture, ?normal : h3d.mat.Texture, ?pbr : h3d.mat.Texture ) {
		this.albedo = albedo;
		this.normal = normal;
		this.pbr = pbr;
		this.offset = new h3d.Vector(0);
	}

	/**
		Returns a copy of the surface (sharing the textures).
	**/
	public function clone() : Surface {
		var o = new Surface(albedo, normal, pbr);
		o.tilling = tilling;
		o.offset.load(offset);
		o.angle = angle;
		o.minHeight = minHeight;
		o.maxHeight = maxHeight;
		return o;
	}

	/**
		Does nothing.
	**/
	public function dispose() {
	}
}

/**
	The textures of all the surfaces, in texture arrays, with their parameters.
**/
class SurfaceArray {
	/**
		The albedo textures.
	**/
	public var albedo : h3d.mat.TextureArray;
	/**
		The normal textures.
	**/
	public var normal : h3d.mat.TextureArray;
	/**
		The PBR textures.
	**/
	public var pbr : h3d.mat.TextureArray;
	/**
		The number of surfaces.
	**/
	public var surfaceCount : Int;
	/**
		The tiling, offset and angle (radians) of each surface.
	**/
	public var params : Array<h3d.Vector4> = [];
	/**
		The minimum and maximum heights of each surface.
	**/
	public var secondParams : Array<h3d.Vector4> = [];

	/**
		Creates the arrays of `count` textures of size `res`.
	**/
	public function new( count, res, mipMaps = false ) {
		surfaceCount = count;
		var flags : Array<h3d.mat.Data.TextureFlags> = [Target];
		if ( mipMaps ) {
			flags.push(ManualMipMapGen);
			flags.push(MipMapped);
		}
		if( count > 0 && res > 0 ) {
			albedo = new h3d.mat.TextureArray(res, res, count, flags, RGBA);
			normal = new h3d.mat.TextureArray(res, res, count, flags, RGBA);
			pbr = new h3d.mat.TextureArray(res, res, count, flags, RGBA);
			albedo.wrap = Repeat;
			albedo.preventAutoDispose();
			normal.wrap = Repeat;
			normal.preventAutoDispose();
			pbr.wrap = Repeat;
			pbr.preventAutoDispose();
		}
	}

	/**
		Returns new arrays of the same size.
	**/
	public function clone() : SurfaceArray {
		var o = new SurfaceArray(albedo.layerCount, albedo.width);
		return o;
	}

	/**
		Disposes the textures.
	**/
	public function dispose() {
		if( albedo != null ) albedo.dispose();
		if( normal != null ) normal.dispose();
		if( pbr != null ) pbr.dispose();
	}
}
