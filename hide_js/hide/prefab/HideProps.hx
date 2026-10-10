package hide.prefab;

/**
	The editor properties of a prefab class, returned by `Prefab.getHideProps`.
**/
typedef HideProps = {
	/**
		The icon name.
	**/
	var icon : String;
	/**
		The displayed name.
	**/
	var name : String;
	/**
		The prefab is a ground: the scene editor places objects on it.
	**/
	var ?isGround : Bool;
	/**
		The file extensions to choose a source file from when the prefab is created.
	**/
	var ?fileSource : Array<String>;
	/**
		Hides the prefab from the add menu.
	**/
	var ?hideInAddMenu : Bool;
	/**
		Tells if a prefab class can be added as a child.
	**/
	@:optional dynamic function allowChildren( cl : Class<hrt.prefab.Prefab> ) : Bool;
	/**
		Tells if the prefab can be added under a parent.
	**/
	@:optional dynamic function allowParent( p : hrt.prefab.Prefab ) : Bool;
	/**
		Called when a child property changes.
	**/
	@:optional dynamic function onChildUpdate( p : hrt.prefab.Prefab ) : Void;
	/**
		Called when resources are renamed, with a function mapping the old paths to the new ones.
	**/
	@:optional dynamic function onResourceRenamed( map : (oldPath : String) -> String ) : Void;
	/**
		Tells if a child is hidden from the tree.
	**/
	@:optional dynamic function hideChildren( p : hrt.prefab.Prefab ) : Bool;
	/**
		Customizes the tree element of the prefab.
	**/
	@:optional dynamic function applyTreeStyle( p : hrt.prefab.Prefab, element : js.html.Element ) : Void;
}
