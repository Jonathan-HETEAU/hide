package hide.comp;

import js.Browser;

/**
	Where a popup opens relative to its anchor.
**/
enum PopupPosition {
	/**
		Over the anchor.
	**/
	Inside;
	/**
		Below the anchor.
	**/
	Bellow;
}
/**
	A popup that closes when clicking outside of it. Useful for medium size editors that appear when clicking on an item.
**/
class Popup extends Component {
	var timer : haxe.Timer;
	var isSearchable:Bool;
	/**
		The element the popup is placed at.
	**/
	public var anchor : Element;
	/**
		The horizontal offset from the anchor.
	**/
	public var offsetX(default, set) : Float = 0;
	/**
		The vertical offset from the anchor.
	**/
	public var offsetY(default, set) : Float = 0;
	/**
		Where the popup opens relative to the anchor.
	**/
	public var position(default, set): PopupPosition = Bellow;

	/**
		Indicates if the user cancelled the popup operation with ESC
	**/
	public var wasCancelled: Bool = false;

	function set_offsetX(v) {
		offsetX = v;
		reflow();
		return offsetX;
	}

	function set_offsetY(v) {
		offsetY = v;
		reflow();
		return offsetY;
	}

	function set_position(v) {
		position = v;
		reflow();
		return position;
	}

	function onMouseDown(e : js.html.MouseEvent) {
		originalTarget = e.target;
	};

	function onMouseUp(e : js.html.MouseEvent) {
		var elem = new Element(originalTarget);
		if (originalTarget != null && canCloseOnClickOutside() && onShouldCloseOnClick(e) && elem.closest(element).length == 0 && elem.closest(element).length == 0) {
			close();
		}
		originalTarget = null;
	}

	var originalTarget : js.html.EventTarget;

	/**
		Creates a popup, with a search bar if `isSearchable`.
	**/
	public function new(?parent:Element, isSearchable = false) {
      super(parent,new Element("<div>"));

		element.attr("tabindex", "-1").attr("popover", "auto").addClass("popup");

		element[0].addEventListener("dblclick", (e) -> {e.stopPropagation();});

		// Prevent parent elements from e.preventDefault(), which would break the
		// ESC to dismiss the popover behavior
		element[0].addEventListener("keydown", (e: js.html.KeyboardEvent) -> {e.stopPropagation(); wasCancelled = wasCancelled || e.key == "Escape";});

		this.isSearchable = isSearchable;

		if (isSearchable) {
			var searchBar = new Element('<input type="text" class="search-bar" placeholder="Search ..."/>');
			element.append(searchBar);

			searchBar.keyup((e) -> onSearchChanged(searchBar));
		}

		var body = parent.closest(".lm_content");
		if (body.length == 0) body = new Element("body");

		timer = new haxe.Timer(500);
		timer.run = function() {
			if( parent.closest("body").length == 0 ) {
				close();
			}
		};

		untyped element[0].showPopover();
		element[0].addEventListener("toggle", onToggle);
      reflow();

		// Make sure our element is focused so the whole ESC to dismiss properly works
		// (because our element steals inputs and prevent the event from escaping bellow it)
		element[0].focus();
	}

	/**
		Shows the popup.
	**/
	public function open() {
		untyped element.get(0).showPopover();
		element.show();
		element.get(0).addEventListener("toggle", onToggle);
		element.parent()?.get(0)?.addEventListener("scroll", onScroll);
        reflow();
	}

	/**
		Places the popup again.
	**/
	public function onScroll(e: js.html.MouseScrollEvent) {
		reflow();
	}

	function onToggle(e: Dynamic) {
		if (e.newState == "open") {
			wasCancelled = false;
		}
		if (e.newState == "closed") {
			timer.stop();
			var parent = element[0].parentElement;
			if (parent != null) {
				// Focus our parent when closing the popup, it allows
				// the ESC to dismiss the popup to properly work
				// when we are interracting in a nested popup scenario
				parent.focus();

				parent.removeEventListener("scroll", onScroll);
			}

			if (anchor == null) {
				element.remove();
			}
			element.hide();
			onClose();
		}
	}

	function fixInputSelect() {
		var e = element.find("input");
		e.each(function (id : Int, elem : js.html.Element) {
			if (elem.onpointerdown == null && elem.onpointerup == null) {
				elem.onpointerdown = function(event : js.html.PointerEvent) {
					elem.setPointerCapture(event.pointerId);
				};

				elem.onpointerup = function(event : js.html.PointerEvent) {
					elem.releasePointerCapture(event.pointerId);
				};
			}
		});
	}

	var reflowQueued = false;
	function reflow() {
		if (!reflowQueued) {
			reflowQueued = true;
			Browser.window.requestAnimationFrame((_) -> reflowInternal());
		}
	}

	function reflowInternal() {
		var refElement = if (anchor != null) anchor else element.parent();
		var offset = refElement.offset();
		var box = element[0].getBoundingClientRect();
		var popupHeight = box.height;
		var popupWidth = box.width;

		var clientHeight = Browser.document.documentElement.clientHeight;
		var clientWidth = Browser.document.documentElement.clientWidth;

		offset.top += offsetY;
		if (position == Bellow) {
			offset.top += refElement.get(0).offsetHeight;
		}
		offset.top = Math.min(offset.top,  clientHeight - popupHeight - 16);

		offset.left += offsetX;
		offset.left = Math.min(offset.left,  clientWidth - popupWidth - 16) ;

		element.offset(offset);
		reflowQueued = false;
	}

	/**
		Called when the search changes.
	**/
	public function onSearchChanged(searchBar:Element):Void {}

	/**
		Closes the popup.
	**/
	public function close() {
		untyped element.get(0).hidePopover();
		onToggle({newState: "closed"});
	}

	/**
		Called when the popup closes.
	**/
	public dynamic function onClose() {
	}

	/**
		Tells if a click outside closes the popup (true by default).
	**/
	public function canCloseOnClickOutside() : Bool {
		return true;
	}

	/**
		Tells if a click outside closes the popup (true by default).
	**/
	public dynamic function onShouldCloseOnClick(clickEvent : js.html.Event) : Bool {
		return true;
	}
}
