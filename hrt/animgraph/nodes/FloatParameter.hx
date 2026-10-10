package hrt.animgraph.nodes;

/**
	Outputs the value of a parameter of the graph.
**/
class FloatParameter extends Node {
	@:output var value: Float;
	/**
		The parameter.
	**/
	public var parameter: hrt.animgraph.AnimGraph.Parameter;

	#if editor
	override function canCreateManually() : Bool {
		return false;
	}

	override function getOutputNameOverride(name: String) : String {
		return parameter?.name ?? "undefined";
	}
	#end

	override function tick(dt: Float) : Void {
		value = parameter?.runtimeValue ?? 0;
	}


}