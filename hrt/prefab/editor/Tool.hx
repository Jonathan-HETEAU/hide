package hrt.prefab.editor;

/**
	An interactive tool of the scene editor (`EditContext2`), like a brush or a gizmo. Override `onEnter`, `onQuit` and `update`.
**/
class Tool {
	/**
		Captures the mouse events with an interactive while the tool is enabled.
	**/
	public var mouseSupport(default, set): Bool = false;

	/**
		A foreground tool automatically remove the previous foreground tool when entered
	**/
	public var foreground: Bool = true;

	var enabled: Bool;
	var interactive: h2d.Interactive;

	var s3d(get, never): h3d.scene.Scene;
	var s2d(get, never): h2d.Scene;
	var ctx: EditContext2;

	function get_s3d() {
		return ctx.s3d;
	}

	function get_s2d() {
		return ctx.s2d;
	}

	var debugText: h2d.Text;

	function set_mouseSupport(v: Bool) {
		mouseSupport = v;
		syncInteractive();
		return mouseSupport;
	}

	/**
		Creates the tool.
	**/
	public function new(ctx: EditContext2) {
		this.ctx = ctx;
	}

	/**
		Enables the tool, quitting the previous foreground tool if this one is in the foreground.
	**/
	final public function enter() {
		if (foreground) {
			if (ctx.foregroundEditorTool != null) {
				ctx.foregroundEditorTool.quit();
			}
			ctx.foregroundEditorTool = this;
		} else {
			if(ctx.otherEditorTools.contains(this)) {
				this.quit();
			}
			ctx.otherEditorTools.push(this);
		}

		enabled = true;
		syncInteractive();

		onEnter();
	}

	function onEnter() {
		debugText = new h2d.Text(hxd.res.DefaultFont.get(), ctx.s2d);
		debugText.dropShadow = {
			dx: 1,
			dy: 1,
			color: 0,
			alpha: 0.5,
		};
		debugText.text = Type.getClassName(Type.getClass(this));
	}

	/**
		Disables the tool. Throws if a foreground tool is not the current one.
	**/
	final public function quit() {
		onQuit();

		enabled = false;
		syncInteractive();

		if (foreground) {
			if (ctx.foregroundEditorTool != this)
				throw "Trying to quit this tool while it was not the foreground tool of the editor";
			ctx.foregroundEditorTool = null;
		} else {
			var removed = ctx.otherEditorTools.remove(this);
			if (!removed)
				throw "Trying to quit this tool while it was not registered in the current context";
		}
	}

	function onQuit() {
		debugText.remove();
	}

	/**
		Return true to tell that the command has processed the delete command and that the command shouldn't be forwarded to
		the current scene editor
	**/
	public function onDeleteCommand() : Bool {
		return false;
	}

	/**
		Called once per frame
	**/
	function update(dt: Float) {

	};

	function syncInteractive() {
		if (interactive != null) {
			interactive.remove();
		}
		interactive = null;
		if (!mouseSupport || !enabled)
			return;
		interactive = new h2d.Interactive(10000, 10000, ctx.s2d);
		interactive.x = -5000;
		interactive.y = -5000;
		interactive.propagateEvents = true;
		interactive.cancelEvents = false;
		postInitInteractive();
	}

	function postInitInteractive() {

	}
}