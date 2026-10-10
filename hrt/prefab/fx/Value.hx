package hrt.prefab.fx;

/**
	An animated value of an FX: constant, curve, random, or combination. Below, `random(rid)` is the random value `rid` of the particle, between `-1` and `1`.
**/
enum Value {
	// fast flat values
	/**
		Zero.
	**/
	VZero;
	/**
		A constant.
	**/
	VConst(v: Float);
	/**
		A curve.
	**/
	VCurve(c: Curve);
	/**
		`c * scale + add`.
	**/
	VCurveT(c: Curve, scale: Float, add: Float);
	/**
		`random(rid) * scale + add`.
	**/
	VRandom(rid: Int, scale: Float, add: Float);
	/**
		`(random(rid) * scale + add) * c`.
	**/
	VRandMultCurve(rid: Int, scale: Float, add: Float, c: Curve);  
	/**
		`random(rid) * scale + add + c`.
	**/
	VRandAddCurve(rid: Int, scale: Float, add: Float, c: Curve);  
	/**
		`lerp(a, b, blendVar) * scale + add`, blending by the FX parameter `blendVar`.
	**/
	VBlendCurves(scale: Float, add: Float, a: Curve, b: Curve, blendVar: String);
	/**
		`(random(rid) * scale + add) * lerp(a, b, blendVar)`.
	**/
	VRandomBlendCurves(rid: Int, scale: Float, add: Float, a: Curve, b: Curve, blendVar: String);
	/**
		`lerp(a, b, (random(rid) + 1) / 2)`.
	**/
	VRandomBetweenCurves(rid: Int, a: Curve, b: Curve);  

	// rare complex values that we cannot currently optimize
	/**
		`a` evaluated at the value of the FX parameter `param` instead of the time.
	**/
	VParamRemap(a: Value, param: String);
	/**
		`v` evaluated at the value of `remap` instead of the time.
	**/
	VValueRemap(v: Value, remap: Value);
	/**
		`a + b`.
	**/
	VAdd(a: Value, b: Value);
	/**
		`a * b`.
	**/
	VMult(a: Value, b: Value);

	/**
		A vector (`w` is `1` if `null`).
	**/
	VVector(x: Value, y: Value, z: Value, ?w: Value);
	/**
		A color from hue, saturation, lightness and alpha.
	**/
	VHsl(h: Value, s: Value, l: Value, a: Value);
}
