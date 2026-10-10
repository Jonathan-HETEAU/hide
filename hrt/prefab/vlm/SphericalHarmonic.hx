package hrt.prefab.vlm;

/**
	The spherical harmonic coefficients of a color.
**/
class SphericalHarmonic {

	/**
		The red coefficients.
	**/
	public var coefR : Array<Float> = [];
	/**
		The green coefficients.
	**/
	public var coefG : Array<Float> = [];
	/**
		The blue coefficients.
	**/
	public var coefB : Array<Float> = [];
	/**
		The order: `order * order` coefficients.
	**/
	public var order : Int;

	/**
		Creates zero coefficients of an order.
	**/
	public function new(order:Int) {
		this.order = order;
		var coefCount = order * order;
		coefR = [for (value in 0...coefCount) 0];
		coefG = [for (value in 0...coefCount) 0];
		coefB = [for (value in 0...coefCount) 0];
	}
}
