package hide.ui;

/**
	Where a view is opened in the layout.
**/
enum abstract DisplayPosition(String) from String to String {
	/**
		The left column.
	**/
	var Left = "content_left";
	/**
		The center.
	**/
	var Center = "content_center";
	/**
		The right column.
	**/
	var Right = "content_right";
	/**
		The bottom of the center.
	**/
	var Bottom = "content_bottom";
	/**
		The column holding the center and bottom, used internally.
	**/
	var MiddleColumnInternal = "content_middle_internal";
}

/**
	The options of a view class, given to `View.register`.
**/
typedef ViewOptions = {
	/**
		Where the view opens (`Center` by default).
	**/
	var ?position : DisplayPosition;
	/**
		The width of the view.
	**/
	var ?width : Int;
	/**
		The id of the layout item.
	**/
	var ?id : String;
}

/**
	The base class of the IDE views (tabs): state, config, keys, undo, clipboard, file watches and layout container.
	A view class is registered with `View.register`.
**/
@:keepSub @:allow(hide.Ide)
class View<T> extends hide.comp.Component {

	#if !hl
	var container : golden.Container;
	var containerView : golden.ContentItem;
	/**
		Shows the view in full screen.
	**/
	public var fullScreen(get,set) : Bool;
	var contentWidth(get,never) : Int;
	var contentHeight(get,never) : Int;
	#end
	var watches : Array<{ keep : Bool, path : String, callb : Void -> Void }> = [];
	/**
		The keyboard shortcuts of the view.
	**/
	public var keys(get,null) : Keys;
	/**
		The saved state of the view.
	**/
	public var state(default, null) : T;
	/**
		The undo history of the view.
	**/
	public var undo(get, never) : hide.ui.UndoHistory;

	function get_undo() : hide.ui.UndoHistory {
		return undoStack[undoStack.length-1];
	}

	var undoStack: Array<UndoHistory> = [new hide.ui.UndoHistory()];

	/**
		The config of the view.
	**/
	public var config(get, null) : Config;
	/**
		The class name of the view.
	**/
	public var viewClass(get, never) : String;
	/**
		The options the view class was registered with.
	**/
	public var defaultOptions(get,never) : ViewOptions;
	var needRebuild : Bool;

	/**
		Creates a view with a state.
	**/
	public function new(state:T) {
		super(null,null);
		element = null;
		this.state = state;
		ide = Ide.inst;
		#if !hl
		@:privateAccess ide.currentFullScreen = null;
		#end
	}

	/**
		Calls `onChange` when a file changes. The watch is removed on rebuild unless `keepOnRebuild`.
	**/
	public function watch( filePath : String, onChange : Void -> Void, ?opts : { ?checkDelete : Bool, ?keepOnRebuild : Bool } ) {
		if( opts == null ) opts = {};
		ide.fileWatcher.register(filePath, onChange, opts.checkDelete);
		var w = { keep : opts.keepOnRebuild, path : filePath, callb : onChange };
		watches.push(w);
		return w;
	}

	/**
		Removes a watch returned by `watch`.
	**/
	public function unwatch(w) {
		if( watches.remove(w) )
			ide.fileWatcher.unregister(w.path, w.callb);
	}

	function get_config() {
		if( config == null )
			config = ide.currentConfig;
		return config;
	}

	function get_keys() {
		if( keys == null ) {
			keys = new Keys(null);
			#if js
			keys.register("view.fullScreen", function() fullScreen = !fullScreen);
			keys.register("view.reopenLastClosedTab", function() ide.reopenLastClosedTab());
			#end
		}
		return keys;
	}

	/**
		Returns the title of the tab.
	**/
	public function getTitle() {
		return viewClass.split(".").pop();
	}

	/**
		Called before the view closes. Returns false to cancel.
	**/
	public function onBeforeClose() {
		return true;
	}

	function get_viewClass() {
		return Type.getClassName(Type.getClass(this));
	}

	/**
		Push a new "UndoStack", that will collect all the new undo.change until
		popUndoStack is called
	**/
	public function pushUndoStack() {
		undoStack.push(new UndoHistory());
	}

	/**
		Pop the last pushUndoStack operation, creating a unique undo operation that contains all the changes were
		recorded in the undo buffer if any were created
	**/
	public function popUndoStack() {
		if (undoStack.length <= 1) {
			throw "trying to pop while there is only one or less undoes on the stack";
		}
		var top = undoStack.pop();

		@:privateAccess if (undo.undoElts.length > 0) {
			undo.change(top.toElement());
		}
	}

	#if !hl
	/**
		Copies a value to the clipboard, tagged with a type (the view class by default).
	**/
	public function setClipboard( v : Dynamic, ?type : String, ?opts : {} ) {
		nw.Clipboard.get().set(ide.toJSON({ type : type == null ? viewClass : type, value : v, opts : opts }));
	}

	/**
		Tells if the clipboard holds a value of a type (the view class by default).
	**/
	public function hasClipboard( ?type : String ) {
		if( type == null ) type = viewClass;
		var v : Dynamic = try haxe.Json.parse(nw.Clipboard.get().get()) catch( e : Dynamic ) null;
		return v != null && v.type == type;
	}

	/**
		Returns the clipboard value of a type (the view class by default), or null. `opts.ref` receives the copied options.
	**/
	public function getClipboard( ?type : String, ?opts : { ref : Dynamic } ) : Dynamic {
		if( type == null ) type = viewClass;
		var v : Dynamic = try haxe.Json.parse(nw.Clipboard.get().get()) catch( e : Dynamic ) null;
		if( v != null && opts != null ) opts.ref = v.opts;
		return v == null || v.type != type ? null : v.value;
	}

	function syncTitle() {
		container.setTitle(getTitle());
	}

	function isKeysLocked( e : js.jquery.Event ) {
		var active = js.Browser.document.activeElement;
		if( active == null || e.altKey )
			return false;
		if( e.ctrlKey && e.keyCode != "A".code && e.keyCode != "C".code && e.keyCode != "V".code && e.keyCode != "X".code )
			return false;
		if( active.nodeName == "TEXTAREA" )
			return true;
		if( active.nodeName == "INPUT" ) {
			var type = (""+active.getAttribute("type")).toLowerCase();
			if( type == "text" || type == "null" || type == "number" || type == "password" || type == "date" )
				return true;
		}
		return false;
	}

	/**
		Handles a key event with the shortcuts of the focused elements, then of the view. Returns true if handled.
	**/
	public function processKeyEvent( e : js.jquery.Event ) {
		if( isKeysLocked(e) ) {
			e.stopPropagation();
			return true;
		}
		var active = js.Browser.document.activeElement;
		for( el in element.find("[haskeys=true]").add(element).elements() ) {
			if(el.has(active).length == 0 && el[0] != active)
				continue;
			var keys = hide.ui.Keys.get(el);
			if( keys == null ) continue;
			if( keys.processEvent(e,config) )
				return true;
		}
		// global keys
		return keys.processEvent(e,config);
	}

	/**
		Sets the layout container of the view.
	**/
	public function setContainer(cont) {
		this.container = cont;
		@:privateAccess ide.views.push(this);
		syncTitle();
		container.on("destroy",function(e) {
			destroy();
		});
		container.on("show", function(_) {
			// we are dragging the container tab
			if( container.parent.parent.config == null ) return;
			haxe.Timer.delay(onActivate,0);
		});
		container.on("hide", function(_) {
			onHide();
		});
		container.getElement().keydown(function(e) {
			processKeyEvent(e);
		});

		container.on("tab", function(e) {
			container.tab.onClose = function() {
				return onBeforeClose();
			};
			container.tab.element.contextmenu(function(e: js.jquery.Event) {
				var menu = buildTabMenu();
				if( menu.length > 0 ) {
					hide.comp.ContextMenu.createFromEvent(cast e, menu);
				}
				e.preventDefault();
			});
		});

		if( containerView != null ) containerView.__view = null;
		containerView = container.parent;
		containerView.__view = this;
		element = cont.getElement();
	}

	/**
		Rebuilds the view (once it is shown).
	**/
	public final function rebuild() {
		function checkRebuild() {
			if( container == null || !needRebuild ) return;
			if( !isActive() ) {
				haxe.Timer.delay(checkRebuild,200);
				return;
			}
			needRebuild = false;
			onRebuild();
		}
		if( !needRebuild ) {
			needRebuild = true;
			checkRebuild();
		}
	}

	function onRebuild() {
		for( w in watches.copy() )
			if( !w.keep ) {
				ide.fileWatcher.unregister(w.path, w.callb);
				watches.remove(w);
			}
		undo.clear();
		syncTitle();

		// can happen on close all
		if (element == null)
			return;
		element.empty();
		element.off();
		onDisplay();
	}
	#end

	#if hl
	/**
		Rebuilds the view (once it is shown).
	**/
	public final function rebuild() {
		onDisplay();
	}
	#end

	function onDisplay() {
		element.text(viewClass+(state == null ? "" : " "+state));
	}

	function onHide() {
	}

	/**
		Called when the view is resized.
	**/
	public function onResize() {
	}

	/**
		Called when files are dragged over the view. Returns true if handled.
	**/
	public function onDrag(e : js.html.DragEvent) {
		return false;
	}

	/**
		Called when a drag over the view ends.
	**/
	public function onDragEnd(e : js.html.DragEvent) {
		return false;
	}

	/**
		Called when files are dropped on the view. Returns true if handled.
	**/
	public function onDrop(e : js.html.DragEvent) {
		return false;
	}

	function toString() {
		return Type.getClassName(Type.getClass(this)) + (this.state == null ? "" : "("+haxe.Json.stringify(this.state)+")");
	}

	function get_defaultOptions() return viewClasses.get(Type.getClassName(Type.getClass(this))).options;

	#if !hl

	/**
		Tells if the view is shown.
	**/
	public function isActive() {
		return container != null && !container.isHidden;
	}

	/**
		Called when the view is shown.
	**/
	public function onActivate() {
	}

	/**
		Gives focus if part of a tab group
	**/
	public function activate() {
		if( container != null ) {
			var cur = container.parent.parent.getActiveContentItem();
			if( cur != container.parent )
				container.parent.parent.setActiveContentItem(container.parent);
		}
	}

	function saveState() {
		container.setState(state);
	}

	/**
		Closes the view.
	**/
	public function close() {
		if( container != null )
			container.close();
	}

	function destroy() {
		for( w in watches.copy() )
			ide.fileWatcher.unregister(w.path, w.callb);
		watches = [];
		@:privateAccess ide.views.remove(this);
		for( c in container.getElement().find("canvas") ) {
			var s : hide.comp.Scene = Reflect.field(c, "__scene");
			if( s != null )
				s.dispose();
		}
		element = null;
		containerView.__view = null;
		@:privateAccess ide.lastClosedTabStates.push(state);
	}

	function buildTabMenu() : Array<hrt.ui.HuiMenu.MenuItem> {
		if( @:privateAccess ide.subView != null )
			return [];
		return [
			{ label : "Close", click : close },
			{ label : "Close Others", click : function() for( v in @:privateAccess ide.views.copy() ) if( v != this && v.container.tab.header == container.tab.header ) v.close() },
			{ label : "Close All", click : function() for( v in @:privateAccess ide.views.copy() ) if( v.container.tab.header == container.tab.header ) v.close() },
		];
	}

	function get_contentWidth() return container.width;
	function get_contentHeight() return container.height;
	function get_fullScreen() return container != null && container.getElement().is(".fullScreen");
	function set_fullScreen(v) {
		if( fullScreen == v )
			return v;
		if( container != null ) {
			new Element(".fullScreen").removeClass("fullScreen");
			container.getElement().toggleClass("fullScreen", v);
			new Element("body").toggleClass("fullScreenMode",v);
		}
		@:privateAccess if( v ) ide.currentFullScreen = this else ide.currentFullScreen = null;
		if( !ide.isCDB ) ide.setFullscreen(v);
		return v;
	}
	#end

	/**
		The registered view classes, by name.
	**/
	public static var viewClasses = new Map<String,{ name : String, cl : Class<View<Dynamic>>, options : ViewOptions }>();
	/**
		Registers a view class. Returns null, to be used as a static initializer.
	**/
	public static function register<T>( cl : Class<View<T>>, ?options : ViewOptions ) {
		var name = Type.getClassName(cl);
		if( options == null )
			options = {}
		if( options.position == null )
			options.position = Center;
		viewClasses.set(name, { name : name, cl : cl, options : options });
		return null;
	}

}
