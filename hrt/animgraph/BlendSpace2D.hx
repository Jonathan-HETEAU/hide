package hrt.animgraph;

/**
	A point of a `BlendSpace2D`: an animation at a position.
**/
@:structInit
@:build(hrt.prefab.Macros.buildSerializable())
class BlendSpacePoint {
	/**
		The X position.
	**/
	@:s public var x : Float = 0.0;
	/**
		The Y position.
	**/
	@:s public var y : Float = 0.0;
	/**
		The speed of the animation.
	**/
	@:s public var speed: Float = 1.0;
	/**
		The path of the animation.
	**/
	@:s public var animPath: String = null;
	/**
		Keeps the animation in sync with the other animations of the graph marked as `keepSync`.
	**/
	@:s public var keepSync: Bool = true; // If true, the anim will be kept in sync with all the other anims in the graph marked as keepSync
}

/**
	A 2D blend space (`.bs2d` file): blends the animations of its points depending on a 2D position.
**/
@:prefabHideInAddMenu
class BlendSpace2D extends hrt.prefab.Prefab {
	@:s var points : Array<BlendSpacePoint> = [];
	@:s var animFolder : String = null; // The folder to use as a base for the animation selection/loading

	@:s var minX = -1.0;
	@:s var maxX = 1.0;
	@:s var smoothX = 0.0;

	@:s var minY = -1.0;
	@:s var maxY = 1.0;
	@:s var smoothY = 0.0;

	@:s var scaleSpeedOutOfBound: Bool = false;

	/**
		Returns a `h3d.anim.BlendSpace2D` playing the points (their paths replaced through `animSet`).
	**/
	public function makeAnimation(?animSet: Map<String, String>, animCache: h3d.prim.ModelCache) : h3d.anim.BlendSpace2D {
		animSet = animSet ?? [];
		var instPoints : Array<h3d.anim.BlendSpace2D.BlendSpace2DPoint> = [];
		for (point in points) {
			var path = point.animPath;
			path = animSet[path] ?? path;
			if (path == "" || path == null)
				continue;
			var anim = animCache.loadAnimation(hxd.res.Loader.currentInstance.load(path).toModel());
			anim.speed = point.speed;
			instPoints.push(new h3d.anim.BlendSpace2D.BlendSpace2DPoint(point.x, point.y, anim, point.keepSync));
		}

		var blendSpace = new h3d.anim.BlendSpace2D(name, instPoints);

		blendSpace.xSmooth = smoothX;
		blendSpace.ySmooth = smoothY;
		blendSpace.scaleSpeedOutsideOfBounds = scaleSpeedOutOfBound;

		return blendSpace;
	}

	static var _ = hrt.prefab.Prefab.register("blendspace2d", BlendSpace2D, "bs2d");
}