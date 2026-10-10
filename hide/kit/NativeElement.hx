package hide.kit;

/**
	The native element: an HTML element in JS, an `h2d.Object` otherwise.
**/
typedef NativeElementType = #if js js.html.Element #else h2d.Object #end;
/**
	A native element of the kit.
**/
abstract NativeElement(NativeElementType) from NativeElementType to NativeElementType {

	/**
		Adds a CSS class.
	**/
	public function addClass(name: String) {
		#if js
		this.classList.add(name);
		#elseif hui
		this.dom.addClass(name);
		#end
	}

	/**
		Toggles a CSS class (sets it if `force` is not `null`).
	**/
	public function toggleClass(name: String, ?force: Bool) {
		#if js
		this.classList.toggle(name, force);
		#elseif hui
		this.dom.toggleClass(name, force);
		#end
	}


	/**
		Returns the native element.
	**/
	public function get() : NativeElementType {
		return this;
	}

	/**
		Adds a child.
	**/
	public function addChild(other: NativeElement) {
		#if js
		this.appendChild(other);
		#else
		this.addChild(other);
		#end
	}

	/**
		Creates an element of a kind (tag name, or class in Hui).
	**/
	public static function create(kind: String) : NativeElement {
		#if js
		return js.Browser.document.createElement(kind);
		#elseif hui
		var elem = new hrt.ui.HuiElement();
		elem.dom.addClass(kind);
		return elem;
		#else
		return null;
		#end
	}
}

