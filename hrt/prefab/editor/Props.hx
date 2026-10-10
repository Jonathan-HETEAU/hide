package hrt.prefab.editor;

/**
	The editor properties of a prefab class, from its metadata.
**/
@:structInit
@:publicFields
class Props {
	/**
		The icon.
	**/
	var icon: hxd.res.Image;
	/**
		The display name.
	**/
	var name: String;
	/**
		Hides the class from the add menu.
	**/
	var hideInAddMenu: Bool = false;
	/**
		The category in the add menu.
	**/
	var category: String;
}