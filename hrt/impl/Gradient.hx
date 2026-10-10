package hrt.impl;

import haxe.Int32;
import h3d.mat.Texture;
import h3d.Vector4;

/**
	A color stop of a gradient.
**/
typedef ColorStop = {
	/**
		The position, from `0` to `1`.
	**/
	var position : Float;
	/**
		The color, as ARGB.
	**/
	var color : Int;
};

/**
	The interpolation between the stops of a gradient.
**/
enum abstract GradientInterpolation(String) from String to String {
	/**
		Linear.
	**/
	var Linear;
	/**
		Cubic.
	**/
	var Cubic;
	/**
		Constant: the color of the previous stop.
	**/
	var Constant;
}

/**
	The data of a gradient.
**/
typedef GradientData = {
	/**
		The color stops, by position.
	**/
	var stops : Array<ColorStop>;
	/**
		The size of the texture.
	**/
	var resolution : Int;
	/**
		Makes a vertical texture.
	**/
	var isVertical : Bool;
	/**
		The interpolation between the stops.
	**/
	var interpolation: GradientInterpolation;
	/**
		The color space of the interpolation, as an index in `ColorSpace.colorModes`.
	**/
	var colorMode: Int;
};

#if editor
/**
	A cached gradient texture of the editor.
**/
typedef EditorCacheData = {
	/**
		The texture.
	**/
	var tex : Texture;
};
#end

/**
	A color gradient, as stops interpolated in a color space, rendered to textures (cached).
**/
class Gradient {

	/**
		The data.
	**/
	public var data : GradientData = {
		stops: new Array<ColorStop>(),
		resolution: 32,
		isVertical: false,
		interpolation: Linear,
		colorMode: 0,
	};

	/**
		Creates an empty gradient.
	**/
	public function new () {
	}

	/**
		Returns a black to white gradient.
	**/
	public static function getDefaultGradientData() : GradientData {
		var data : GradientData = {stops: [{position: 0.0, color:0xFF000000}, {position: 1.0, color:0xFFFFFFFF}], resolution: 64, isVertical : false, interpolation: Linear, colorMode: 0};
		return data;
	}

	/**
		Returns the color of the gradient at a position, from `0` to `1`.
	**/
	public static function evalData(data : GradientData, position : Float, ?outVector : Vector4) : Vector4 {
		if (outVector == null) outVector = new Vector4();
		var i : Int = 0;
		while(i < data.stops.length && data.stops[i].position < position) {
			i += 1;
		}

		var firstStopIdx : Int = hxd.Math.iclamp(i-1, 0, data.stops.length-1);
		var secondStopIdx : Int = hxd.Math.iclamp(i, 0, data.stops.length-1);

		var firstStop = data.stops[firstStopIdx];
		var secondStop = data.stops[secondStopIdx];

		var c1 : Int = firstStop.color;
		var c2 : Int = secondStop.color;

		var distance = secondStop.position - firstStop.position;
		var offsetFromSecondStop = secondStop.position - position;

		var blend = if (distance != 0.0) 1.0 - (offsetFromSecondStop / distance) else 0.0;
		blend = hxd.Math.clamp(blend, 0.0, 1.0);

		var func = ColorSpace.colorModes[data.colorMode];

		var start = func.ARGBToValue(ColorSpace.Color.fromInt(c1), null);
		var end = func.ARGBToValue(ColorSpace.Color.fromInt(c2), null);

		inline function lerp_angle(a:Float,b:Float,t:Float) : Float {
			var diff = (b - a) % 1.0;
			var dist = ((2.0 * diff) % 1.0) - diff;
			return outVector.x = (a + dist * t + 1.0) % 1.0;
		}

		switch (data.interpolation) {
			case Linear:
				outVector.lerp(start, end, blend);

				// Patch hue values that need to be lerped around the cercle
				if (func.name.charAt(0) == "H") {
					outVector.x = lerp_angle(start.x, end.x, blend);
				}
			case Constant:
				outVector.load(start);
			case Cubic:
				// Honteusement copié de https://github.com/godotengine/godot/blob/c241f1c52386b21cf2df936ee927740a06970db6/scene/resources/gradient.h#L159
				var i0 = firstStopIdx-1;
				var i3 = secondStopIdx+1;
				if (i0 < 0) {
					i0 = firstStopIdx;
				}
				if (i3 >= data.stops.length) {
					i3 = data.stops.length-1;
				}
				var c0 = func.ARGBToValue(ColorSpace.Color.fromInt(data.stops[i0].color), null);
				var c3 = func.ARGBToValue(ColorSpace.Color.fromInt(data.stops[i3].color), null);

				inline function cubicInterpolate(p_from: Float, p_to: Float, p_pre: Float, p_post: Float, p_weight: Float) {
					return 0.5 *
							((p_from * 2.0) +
									(-p_pre + p_to) * p_weight +
									(2.0 * p_pre - 5.0 * p_from + 4.0 * p_to - p_post) * (p_weight * p_weight) +
									(-p_pre + 3.0 * p_from - 3.0 * p_to + p_post) * (p_weight * p_weight * p_weight));
				}

				outVector.r = cubicInterpolate(start.r, end.r, c0.r, c3.r, blend);
				outVector.g = cubicInterpolate(start.g, end.g, c0.g, c3.g, blend);
				outVector.b = cubicInterpolate(start.b, end.b, c0.b, c3.b, blend);
				outVector.a = cubicInterpolate(start.a, end.a, c0.a, c3.a, blend);
			default:
				throw "Unknown interpolation mode";

		}

		var tmp = func.valueToARGB(outVector, null);
		ColorSpace.iRGBtofRGB(tmp, outVector);

		return outVector;
	}

	/**
		Returns the color at a position, from `0` to `1`.
	**/
	public function eval(position : Float, ?outVector : Vector4) : Vector4 {
		return evalData(data, position, outVector);
	}

	#if !editor
	static function getCache() : Map<Int32, h3d.mat.Texture> {
		var engine = h3d.Engine.getCurrent();
		var cache : Map<Int32, h3d.mat.Texture> = @:privateAccess engine.resCache.get(Gradient);
		if(cache == null) {
			cache = new Map<Int32, h3d.mat.Texture>();
			@:privateAccess engine.resCache.set(Gradient, cache);
		}
		return cache;
	}
	#end

	#if editor
	/**
		Returns the cache of the editor textures (editor only).
	**/
	public static function getEditorCache() : Map<{}, EditorCacheData> {
		var engine = h3d.Engine.getCurrent();
		var cache : Map<{}, EditorCacheData> = @:privateAccess engine.resCache.get(Gradient);
		if(cache == null) {
			cache = new Map<{}, EditorCacheData>();
			@:privateAccess engine.resCache.set(Gradient, cache);
		}
		return cache;
	}

	/**
		Disposes the textures of the editor cache (editor only).
	**/
	public static function purgeEditorCache() {
		var cache = getEditorCache();
		for (c in cache) {
			if (c.tex != null) {
				c.tex.dispose();
			}
		}
		cache.clear();
	}
	#end

	/**
		Returns the hash of a gradient, the key of the texture cache.
	**/
	public static function getDataHash(data : GradientData, ?forceOrientation: Bool) : Int32 {

		var hash = hxd.Rand.hash(data.resolution);
		hash = hxd.Rand.hash((forceOrientation ?? data.isVertical) ? 0 : 1, hash);

		// Vieux hack nul
		hash = hxd.Rand.hash((data.interpolation:String).charCodeAt(0), hash);
		hash = hxd.Rand.hash((data.interpolation:String).charCodeAt(1), hash);

		hash = hxd.Rand.hash(data.colorMode, hash);

		for (stop in data.stops) {
			hash =  hxd.Rand.hash(stop.color, hash);
			hash = hxd.Rand.hash(Std.int(stop.position * 0x7FFFFFFF), hash);
		}
		return hash;
	}

	#if castle
	/**
		Returns the texture of a CastleDB gradient, or `null`.
	**/
	public static function textureFromCDB( g : cdb.Types.Gradient, size : Int ) {
		if( g == null ) return null;
		var d : GradientData = {
			stops : [for( i in 0...g.data.colors.length ) { position : g.data.positions[i], color : g.data.colors[i] }],
			resolution : size,
			isVertical : false,
			interpolation: Linear,
			colorMode: 0,
		};
		return textureFromData(d);
	}
	#end

	/**
		Renders a gradient in a layer of a texture array.
	**/
	public static function fillTexArrayFromData(tex : h3d.mat.TextureArray, data : GradientData, idx : Int) {
		function genPixels(data : hrt.impl.Gradient.GradientData) : hxd.Pixels {
			var xScale = data.isVertical ? 0 : 1;
			var yScale = 1 - xScale;
			var pixels = hxd.Pixels.alloc(data.resolution * xScale + 1 * yScale,1 * xScale + data.resolution * yScale, ARGB);

			var vec = new h3d.Vector4();
			for (x in 0...data.resolution) {
				hrt.impl.Gradient.evalData(data, x / (data.resolution-1), vec);
				pixels.setPixelF(x * xScale,x*yScale, vec);
			}
			return pixels;
		}

		tex.uploadPixels(genPixels(data), 0, idx);
	}

	/**
		Returns the texture of a gradient (cached).
	**/
	public static function textureFromData(data : GradientData, ?forceOrientation: Bool) : h3d.mat.Texture {
		function genPixels() {
			var xScale = (forceOrientation ?? data.isVertical) ? 0 : 1;
			var yScale = 1 - xScale;
			var pixels = hxd.Pixels.alloc(data.resolution * xScale + 1 * yScale,1 * xScale + data.resolution * yScale, ARGB);

			var vec = new Vector4();
			for (x in 0...data.resolution) {
				evalData(data, x / (data.resolution-1), vec);
				pixels.setPixelF(x * xScale,x*yScale, vec);
			}
			return pixels;
		}


		#if !editor
		var hash = getDataHash(data, forceOrientation);

		var cache = getCache();
		var entry = cache.get(hash);
		if (entry != null)
		{
			return entry;
		}
		#else

		var cache = getEditorCache();
		var entry = cache.get(data);
		if (entry != null)
		{
			var texture = entry.tex;
			var pixels = genPixels();
			if (pixels.width != texture.width || pixels.height != texture.height) {
				texture.resize(pixels.width, pixels.height);
			}
			texture.uploadPixels(pixels);

			return texture;
		}
		#end

		var texture = Texture.fromPixels(genPixels(), RGBA);
		texture.realloc = function() {
			texture.uploadPixels(genPixels());
		}

		#if !editor
		cache.set(hash, texture);
		#else
		cache.set(data, {tex: texture});
		#end

		return texture;
	}

	/**
		Returns the texture of the gradient (cached).
	**/
	public function toTexture() : h3d.mat.Texture {
		return textureFromData(data);
	}
}