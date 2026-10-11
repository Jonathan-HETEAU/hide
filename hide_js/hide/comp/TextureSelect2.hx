package hide.comp;

/**
	A texture file selection with a preview (`FileSelect2` version).
**/
class TextureSelect2 extends FileSelect2 {
	/**
		The selectable image extensions.
	**/
	public static var IMG_EXTS = hide.Ide.IMG_EXTS.concat(["svg", "envd", "envs"]);

	/**
		The selected texture.
	**/
	public var value(default, set) : h3d.mat.Texture;
	/**
		The area of the texture to use, in pixels, or null.
	**/
	public var area(default, set) : { x : Int, y : Int, width : Int, height : Int };

	/**
		Creates the selection.
	**/
	public function new(?parent,?root, handleDrop: Bool = true) {
		super(IMG_EXTS, parent, root, handleDrop);
	}

	function set_area(v) {
		area = v;
		this.path = path;
		return v;
	}

	override function set_path(p:String) {
		super.set_path(p);
		if( p == null )
			value = null;
		else if( value == null || value.name != p ) {
			var scene = Scene.getNearest(element);
			if( scene != null ) {
				scene.setCurrent();
				value = scene.loadTexture("", p);
			}
		}
		return p;
	}

	override function setPreviewCss(path: String) {
		super.setPreviewCss(path);
		preview.css("background-size", area == null ? "15px 15px" : area.width + "px " + area.height + "px");
		preview.css("background-position", area == null ? "" : area.x + "px " + area.y + "px");
	}

	function set_value(t:h3d.mat.Texture) {
		value = t;
		var p = value == null ? null : value.name;
		if( p != path )
			this.path = p;
		return t;
	}

}