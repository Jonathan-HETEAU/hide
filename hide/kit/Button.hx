package hide.kit;

#if domkit

/**
	A button.
**/
class Button extends Element {
	var label : String;
	/**
		Highlights the button.
	**/
	public var highlight(default, set) : Bool = false;
	/**
		The path of the icon.
	**/
	public var image : String;
	/**
		Medium size.
	**/
	public var medium : Bool = false;
	/**
		Big size.
	**/
	public var big : Bool = false;
	/**
		Huge size.
	**/
	public var huge : Bool = false;
	/**
		Without background.
	**/
	public var quiet : Bool = false;
	/**
		Does not record an undo step when clicked.
	**/
	public var noUndo: Bool = false;

	var button : NativeElement;

	function set_highlight(v:Bool) : Bool {
		highlight = v;
		syncHightlight();
		return v;
	}

	/**
		Creates a button with a label.
	**/
	public function new(parent: Element, id: String, label: String) {
		super(parent, id);
		this.label = label;
	}

	/**
		Called when the button is clicked.
	**/
	public dynamic function onClick() {

	}

	function broadcastClick() {
		parent?.change({callback: onClickChange, isTemporaryEdit: false, recordUndo: !noUndo});
	}

	/** Internal function passed to change() **/
	function onClickChange() {
		root.doTry(() -> {
			onClick();
			@:privateAccess root.prefab?.updateInstance();
		});

		var idPath = getIdPath();
		for (childProperties in root.editedPrefabsProperties) {

			var childElement = childProperties.getElementByPath(idPath);
			var childButton = Std.downcast(childElement, Button);
			if (childButton != null) {
				childProperties.doTry(() -> {
					childButton.onClick();
					@:privateAccess childProperties.prefab?.updateInstance();
				});
			}
		}
	}

	override function makeSelf() {
		#if js

		button = js.Browser.document.createElement("kit-button");
		button.get().innerHTML = label;
		if (image != null) {
			var imageElement = js.Browser.document.createElement("kit-image");
			imageElement.style.backgroundImage = 'url(file://${hide.Ide.inst.getHideResPath(image)})';
			button.get().appendChild(imageElement);
		}
		if (medium) {
			button.get().classList.add("kit-medium");
		}
		if (big) {
			button.get().classList.add("kit-big");
		}

		if (quiet) {
			button.get().classList.add("kit-quiet");
		}

		button.get().addEventListener("click", (e:js.html.MouseEvent) -> {
			if (!disabled) {
				broadcastClick();
				e.preventDefault();
				e.stopPropagation();
			}
		});

		syncHightlight();
		#elseif hui
		var button =new hrt.ui.HuiButton();
		this.button = button;
		new hrt.ui.HuiText(label, button);
		button.onClick = (e) -> {
			if (e.button == 0 && !disabled)
				broadcastClick();
		}
		#end
		setupPropLine(null, button);
	}

	function syncHightlight() {
		#if js
		if (button != null)
			button.toggleClass("highlight", highlight);
		#end
	}
}

#end