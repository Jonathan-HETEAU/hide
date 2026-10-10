package hrt.prefab;

/**
	The type of a property of a prefab (for the shader parameters and the generic properties editor).
**/
enum PropType {
	/**
		An integer, in an optional range.
	**/
	PInt( ?min : Int, ?max : Int );
	/**
		A float, in an optional range.
	**/
	PFloat( ?min : Float, ?max : Float );
	/**
		A vector of `n` components.
	**/
	PVec( n : Int, ?min : Float, ?max : Float );
	/**
		A boolean.
	**/
	PBool;
	/**
		The path of a texture.
	**/
	PTexturePath;
	/**
		A texture.
	**/
	PTexture;
	/**
		A gradient.
	**/
	PGradient;
	/**
		A color.
	**/
	PColor;
	/**
		One of the strings.
	**/
	PChoice( choices : Array<String> );
	/**
		The path of a file with one of the extensions.
	**/
	PFile( exts : Array<String> );
	/**
		A value of the enum.
	**/
	PEnum( e : Enum<Dynamic>);
	/**
		A string.
	**/
	PString( ?maxLen : Int );
	/**
		An unsupported type.
	**/
	PUnsupported( debug : String );
}

/**
	A property of a prefab.
**/
typedef PropDef = {
	/**
		The name of the property.
	**/
	var name : String;
	/**
		The type of the property.
	**/
	var t : PropType;
	/**
		The default value.
	**/
	var ?def : Dynamic;
	/**
		The displayed name.
	**/
	var ?disp : String;
};
