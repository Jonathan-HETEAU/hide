package hrt.impl;

import hrt.impl.Gradient;

/**
	The type of a texture value of a prefab property.
**/
enum abstract TextureType(String) from String to String {
    /**
    	A gradient: `{ type : "gradient", data : GradientData }`.
    **/
    var gradient;
    /**
		A texture path (the default; not used as a type in the JSON, where the value is the path string).
	**/
    var path;
}

/**
	Helpers for the texture values of prefab properties: a path, or a gradient.
**/
class Utils {
    /**
    	Returns the texture of a value, or `null`.
    **/
    public static function getTextureFromValue(val : Any, wrap : h3d.mat.Data.Wrap = Repeat) : h3d.mat.Texture {
        if (Std.isOfType(val, String)) {
            var t = hxd.res.Loader.currentInstance.load(val).toTexture();
            t.wrap = wrap;
            return t;
        }
        else if (Type.typeof(val) == TObject) {
            var val = (val:Dynamic);
            if (val.type != null && Std.isOfType(val.type, String)) {

                switch((val.type:String):TextureType) {
                    case TextureType.gradient:
                    {
                        var gradData = Utils.getGradientData((val:Dynamic));
                        if (gradData != null) {
                            var t = Gradient.textureFromData(gradData);
							t.wrap = wrap;
                            return t;
                        }
                    }
                    default:
                }
            }
        }
        return null;
    }

    // Returns null if value is not a GradientData
    /**
    	Returns the gradient data of a value, or `null` if it is not a gradient.
    **/
    public static function getGradientData(value : Any)  : Null<Gradient.GradientData> {
        if (getTextureType(value) == gradient) {
            var gradientData = ((value:Dynamic).data:GradientData);
            gradientData.interpolation = gradientData.interpolation != null ? gradientData.interpolation : Linear;
            gradientData.colorMode = (gradientData.colorMode:Dynamic) != null ? gradientData.colorMode : 0;

            return gradientData;
        }
        return null;
    }

    /**
    	Returns the type of a value (`path` for a string or `null`), or `null` if unknown.
    **/
    public static function getTextureType(value : Any) : Null<TextureType> {
        if (value == null || Std.isOfType(value, String)) {
            return TextureType.path;
        }
        else if (Type.typeof(value) == TObject) {
            var v : Dynamic = (value:Dynamic);

            if (v.type != null && Std.isOfType(v.type, String)) {
                switch ((v.type:String):TextureType) {
                    case TextureType.gradient: return TextureType.gradient;
                    default:
                        return null;
                }
            }
        }

        return null;
    }

    /**
    	Returns a copy of a value.
    **/
    public static function copyTextureData(val : Any) : Any {
        if (Type.typeof(val) == TObject)
            return haxe.Json.parse(haxe.Json.stringify(val));

        return val;
    }
}
