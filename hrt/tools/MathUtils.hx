package hrt.tools;

/**
	Math helpers.
**/
class MathUtils {
	/**
		Rounds a value to a number of significant digits.
	**/
	static public function roundToSignificantFigures(value: Float, numDigits: Int ) : Float {
		if (value == 0)
			return 0;
		var digits = hxd.Math.ceil(hxd.Math.log10(hxd.Math.abs(value)));
		var power = numDigits - digits;

		var scale = hxd.Math.pow(10, power);
		if (scale == 0)
			return 0;
		return hxd.Math.round(value * scale) / scale;
	}
}