package hide.kit;

#if domkit

/**
	A slider with a minimum and maximum.
**/
class Range<T:Float> extends Slider<T> {
	/**
		Creates a slider between `min` and `max`.
	**/
	public function new(parent: Element, id: String, min: Float, max: Float) {
		super(parent, id);
		this.min = cast min;
		this.max = cast max;
		this.showRange = true;
	}
}

#end