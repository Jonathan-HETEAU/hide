package hrt.shgraph;

/**
	An error of a node of a shader graph.
**/
class ShaderException {

	/**
		The message.
	**/
	public var msg : String;
	/**
		The id of the node.
	**/
	public var idBox : Int;

	/**
		Creates the error.
	**/
	public function new( msg, idBox) {
		this.msg = msg;
		this.idBox = idBox;
	}

	/**
		Returns the message and the node id.
	**/
	public function toString() {
		return 'ShaderException : ${msg} @${idBox}';
	}

	/**
		Throws a `ShaderException`.
	**/
	public static function t( msg : String, idBox : Int) : Dynamic {
		throw new ShaderException(msg, idBox);
		return null;
	}
}