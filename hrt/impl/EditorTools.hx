package hrt.impl;

/**
	A 3D icon of an object in the editor, facing the camera, with no rotation or scale.
**/
class EditorIcon extends hrt.prefab.l3d.Billboard.BillboardObj {
	/**
		Not used.
	**/
	public var scaleWithParent = false;
	/**
		The category, to hide the icons by category.
	**/
	public var category:IconCategory;

	/**
		Creates the icon.
	**/
	public function new(?tile:h3d.mat.Texture, ?parent:h3d.scene.Object, category:IconCategory) {
		super(tile, parent);
		ignoreCollide = false;
		this.category = category;
		this.material.castShadows = false;
	}

	override function sync(ctx) {
		#if editor
		visible = EditorTools.isVisible(category);
		#end
		super.sync(ctx);
	}

	override function getLocalCollider():h3d.col.Collider {
		return new h3d.col.Sphere(0, 0, 0, billboardScale / 2.0);
	}

	// Ingonre scale and rotation
	override function calcAbsPos() {
		absPos.identity();
		absPos.tx = x;
		absPos.ty = y;
		absPos.tz = z;

		if (parent != null) {
			absPos.tx += parent.absPos.tx;
			absPos.ty += parent.absPos.ty;
			absPos.tz += parent.absPos.tz;
		}

		if (invPos != null)
			invPos._44 = 0; // mark as invalid
	}
}

/**
	A 2D icon following an object in the editor, drawn over the scene.
**/
class Editor2DIcon extends h2d.ObjectFollower {
	/**
		The category, to hide the icons by category.
	**/
	public var category:IconCategory;

	/**
		Creates the icon of `obj`.
	**/
	public function new(obj, ?parent, texture, category:IconCategory) {
		super(obj, parent);
		horizontalAlign = Middle;
		followVisibility = true;
		var ico = new h2d.Bitmap(h2d.Tile.fromTexture(texture), this);
		this.category = category;
	}

	override function sync(ctx) {
		#if editor
		visible = EditorTools.isVisible(category);
		#end
		super.sync(ctx);
	}
}

/**
	A category of editor icons.
**/
enum IconCategory {
	/**
		Lights.
	**/
	Light;
	/**
		Trails.
	**/
	Trails;
	/**
		Decals.
	**/
	Decals;
	/**
		3D objects.
	**/
	Object3D;
	/**
		Sounds.
	**/
	Audio;
	/**
		Others.
	**/
	Misc;
}

#if editor
/**
	Helpers for the editor icons (editor only).
**/
class EditorTools {
	// Create a 3d Icon that will be displayed inside the scene as a 3d object, meaning that it can be
	// obscured by the other objects
	/**
		Creates a 3D icon in the scene, which can be hidden by other objects.
	**/
	public static function create3DIcon(object:h3d.scene.Object, iconPath:String, scale:Float = 1.0, category:IconCategory):EditorIcon {
		var ide = hide.Ide.inst;
		var tex = ide.getTexture(iconPath);
		var icon = new EditorIcon(tex, object, category);

		icon.texture = tex;
		icon.billboardScale = scale;

		return icon;
	}

	// Creates a 2d Icon that will be displayed in front of all the other icons
	/**
		Creates a 2D icon, drawn over the scene.
	**/
	public static function create2DIcon(object:h3d.scene.Object, s2d:h2d.Object, iconPath:String, category:IconCategory):Editor2DIcon {
		var ide = hide.Ide.inst;
		return new Editor2DIcon(object, s2d, ide.getTexture(iconPath), category);
	}

	/**
		Loads the visibility of the icon categories.
	**/
	public static function setupIconCategories() {
		for (categoryName in haxe.EnumTools.getConstructors(IconCategory)) {
			var category = haxe.EnumTools.createByName(IconCategory, categoryName, []);
			var ide = hide.Ide.inst;
			if (!ide.show3DIconsCategory.exists(category)) {
				var value = js.Browser.window.localStorage.getItem(iconVisibilityKey(category));
				var shouldBeDisplayed = false;
				if (value == null || value == "true") {
					shouldBeDisplayed = true;
				}
				ide.show3DIconsCategory.set(category, shouldBeDisplayed);
			}
		}
	}

	/**
		Returns the key storing the visibility of a category.
	**/
	public static function iconVisibilityKey(category:IconCategory) {
		return "3dIconVisibility/" + haxe.EnumTools.EnumValueTools.getName(category);
	}

	/**
		Tells if the icons of a category are visible.
	**/
	public static function isVisible(category:IconCategory):Bool {
		return hide.Ide.inst.show3DIcons && hide.Ide.inst.show3DIconsCategory.get(category);
	}
}
#end
