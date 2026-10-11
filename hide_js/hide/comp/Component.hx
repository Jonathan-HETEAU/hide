package hide.comp;

/**
	The base class of the editor HTML components.
**/
class Component {

	var ide : hide.Ide;
	/**
		The class name of the component.
	**/
	public var componentName(get, never) : String;
	/**
		The root element.
	**/
	public var element(default,null) : Element;
	/**
		The key of the saved display state, or null.
	**/
	public var saveDisplayKey : String;

	function new(parent:Element,el:Element) {
		ide = hide.Ide.inst;
		if( el == null )
			el = new Element('<div>');
		this.element = el;
		if( parent != null )
			parent.append(element);
	}

	/**
		Removes the element.
	**/
	public function remove() {
		element.remove();
	}

	final function get_componentName() return Type.getClassName(Type.getClass(this));

	function getDisplayState( key : String ) : Dynamic {
		if( saveDisplayKey == null )
			return null;
		var v = ide.localStorage.getItem(saveDisplayKey + "/" + key);
		if( v == null )
			return null;
		return haxe.Json.parse(v);
	}

	function saveDisplayState( key : String, value : Dynamic ) {
		if( saveDisplayKey == null )
			return;
		ide.localStorage.setItem(saveDisplayKey + "/" + key, haxe.Json.stringify(value));
	}

	function removeDisplayState( key : String ) {
		if( saveDisplayKey == null )
			return;
		ide.localStorage.removeItem(saveDisplayKey + "/" + key);
	}

}