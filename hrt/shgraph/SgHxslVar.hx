package hrt.shgraph;

/**
	The default value of a node input.
**/
enum ShaderDefInput {
	/**
		No default value: the input must be connected.
	**/
	NoDefault;
	/**
		A global variable.
	**/
	Var(name: String);
	/**
		A float constant.
	**/
	Const(intialValue: Float);
	/**
		A boolean constant.
	**/
	ConstBool(initialValue: Bool);
}

/**
	The role of a variable in the HXSL code of a node (`ShaderNodeHxsl`), from its metadata.
**/
enum SgHxslVar {
	/**
		`@sginput`: an input, with its default value.
	**/
	SgInput(isDynamic: Bool, defaultValue: ShaderDefInput);
	/**
		`@sgconst`: a constant set on the node.
	**/
	SgConst;
	/**
		`@sgoutput`: an output.
	**/
	SgOutput(isDynamic: Bool);
	/**
		`@sginit`: a variable initialized in the `__init__` of the shader, in case it is not assigned by a previous shader.
	**/
	SgInit; // @sginit : Make sure the variable is initialized in the __init__ part of the shader in case it's not assigned by a previous shader
	/**
		`isFragment`: replaced by a constant, `true` if the node is generated in the fragment domain.
	**/
	SgIsFragment; // isFragment : replaced by a constant bool that is true if the node is generated in the fragment domain
	/**
		`isVertex`: replaced by a constant, `true` if the node is generated in the vertex domain.
	**/
	SgIsVertex; // isVertex : replaced by a constant bool that is true if the node is generated in the vertex domain
}