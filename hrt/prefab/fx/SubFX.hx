package hrt.prefab.fx;

/**
	Plays a referenced FX as an event of an FX.
**/
@:prefabIcon(HuiRes.ui.icons.prefab.sub_fx)
@:prefabName("Sub FX")
class SubFX extends Reference implements hrt.prefab.fx.Event.IEvent{

	/**
		The start time, in seconds.
	**/
	@:s public var time(default, set) : Float;
	/**
		Loops the sub FX.
	**/
	@:s public var loop(default, set) : Bool;
	/**
		The speed of the sub FX.
	**/
	@:s public var speed(default, set) : Float = 1.0;
	/**
		Not used: the duration is the one of the FX, divided by `speed`.
	**/
	@:s public var duration : Float;

	var instance : hrt.prefab.fx.FX.FXAnimation;

	/**
		Hidden in the editor timeline.
	**/
	public var hidden:Bool = false;
	/**
		Locked in the editor timeline.
	**/
	public var lock:Bool = false;
	/**
		Selected in the editor timeline.
	**/
	public var selected:Bool = false;


	override function postMakeInstance() : Void {
		if (refInstance != null) {
			var fxanim : hrt.prefab.fx.FX.FXAnimation = refInstance.findFirstLocal3d().find(o -> Std.downcast(o, hrt.prefab.fx.FX.FXAnimation));
			if(fxanim != null) {
				fxanim.startDelay = time;
			   fxanim.loop = loop;
				fxanim.playSpeed = speed;
				instance = fxanim;
			}
		}
	}

	function set_time(v) {
		#if editor
		if(instance != null)
			instance.startDelay = v;
		#end
		return time = v;
	}

	function set_speed(v) {
		#if editor
		if(instance != null)
			instance.playSpeed = v;
		#end
		return speed = v;
	}

	/**
		Returns the duration of the FX divided by `speed`.
	**/
	public function getDuration() {
		if (instance != null)
			return instance.duration / speed;
		return 0.0;
	}

	#if editor
	// stretching the strip changes the playback speed
	/**
		Sets `speed` so that the FX lasts `v` seconds (editor only).
	**/
	public function setDuration(v : Float) : Void {
		if (instance != null && instance.duration > 0 && v > 0)
			speed = instance.duration / v;
	}
	#end

	function set_loop(v) {
		#if editor
		if(instance != null)
			instance.loop = v;
		#end
		return loop = v;
	}

	/**
		Returns this prefab.
	**/
	public function getEventPrefab() { return this; }

	/**
		Returns the event instance.
	**/
	public function prepare() : Event.EventInstance {
		return {
			evt: this
		};
	}

	override function updateInstance(?propName:String) {
		super.updateInstance(propName);

		if (propName == "loop") {
			postMakeInstance();
		}
	}

	override function edit2( ctx : hrt.prefab.EditContext2 ) {
		ctx.build(
			<category("Event")>
				<slider field={time} defaultValue={0.0}/>
				<checkbox field={loop}/>
				<slider field={speed} min={0.01} defaultValue={1.0}/>
			</category>
		);
		super.edit2(ctx);
	}

	#if editor

	/**
		Returns the label, length and loop of the event in the editor timeline.
	**/
	public function getDisplayInfo(ctx:hide.prefab.EditContext) {
		var ref = Std.downcast(resolve(), FX);
		return {
			label: ref != null ? new haxe.io.Path(source).file + (speed != 1 ? ' x${hxd.Math.fmt(speed)}' : "") : "null",
			length: ref != null ? ref.duration / speed : 1.0,
			loop: loop
		};
	}

	override function getHideProps() : hide.prefab.HideProps {
		return {
			icon : "play-circle", name : "SubFX"
		};
	}
	#end

	static var _ = Prefab.register("subFX", SubFX);

}