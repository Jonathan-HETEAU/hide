package hrt.prefab.fx;

/**
	A playing event.
**/
typedef EventInstance = {
	/**
		The event.
	**/
	var evt : IEvent;
	/**
		Called when the event starts, or `null`.
	**/
	var ?play : Void->Void;
	/**
		Called when the event ends, or `null`.
	**/
	var ?stop : Void->Void;
	/**
		Called at each update with the time since the start of the event, or `null`.
	**/
	var ?setTime : Float->Void;
	/**
		Tells if the event is playing.
	**/
	var ?playing : Bool;
};

/**
	An event of an FX timeline.
**/
interface IEvent {
	/**
		The name.
	**/
	var name : String;
	/**
		The start time, in seconds.
	**/
	var time(default, set) : Float;
	/**
		Hidden in the editor timeline.
	**/
	var hidden : Bool;
	/**
		Locked in the editor timeline.
	**/
	var lock : Bool;
	/**
		Selected in the editor timeline.
	**/
	var selected : Bool;
	/**
		Returns the prefab of the event.
	**/
	function getEventPrefab() : hrt.prefab.Prefab;
	/**
		Returns the duration, in seconds.
	**/
	function getDuration() : Float;
	/**
		Returns the event instance, or `null`.
	**/
	function prepare() : EventInstance;
	#if editor
	/**
		Sets the duration (editor only).
	**/
	function setDuration(duration: Float) : Void;
	/**
		Returns the label of the event in the editor timeline (editor only).
	**/
	function getDisplayInfo(ctx: hide.prefab.EditContext) : { label: String, ?loop: Bool };
	#end
}

/**
	An event of an FX timeline, played between `time` and `time + duration`. Events named `loop` and `end` set the loop of the FX.
**/
@:prefabIcon(HuiRes.ui.icons.prefab.event)
class Event extends hrt.prefab.Prefab implements IEvent {
	/**
		The start time, in seconds.
	**/
	@:s public var time(default, set): Float = 0.0;
	/**
		The duration, in seconds (`0` for none).
	**/
	@:s public var duration: Float = 0.0;
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

	public function new(parent, shared: ContextShared) {
		super(parent, shared);
	}

	function set_time(v) {
		time = v;
		#if editor
		if (this.name.toLowerCase() == "loop" || this.name.toLowerCase() == "end") {
			var fx3d = Std.downcast(getRoot().findFirstLocal3d(), hrt.prefab.fx.FX.FXAnimation);
			if (fx3d != null) {
				fx3d.initLoop();
			}
		}
		#end

		return time;
	}

	/**
		Returns `duration`.
	**/
	public function getDuration() {
		return duration;
	}

	/**
		Returns the event instance.
	**/
	public function prepare() : EventInstance {
		return {
			evt: this
		};
	}

	/**
		Plays and stops the events for the time going from `prevTime` to `time`, and sets their time. A time going back loops with `duration`.
	**/
	public static function updateEvents(evts: Array<EventInstance>, time: Float, prevTime: Float, duration: Float) {
		if(evts == null) return;

		for(evt in evts) {
			var start = evt.evt.time;
			var evtDuration = evt.evt.getDuration();
			var end = evtDuration + start;

			// Take "looping" and seeking back in time into account
			if (time < prevTime && duration > 0) {
				prevTime -= duration;
			}

			if (time > prevTime) {
				var shouldBePlaying = start <= time && (evtDuration <= 0 || time <= end);

				if (!evt.playing && shouldBePlaying) {
					evt.playing = true;
					if (evt.play != null)
						evt.play();
				}

				if (evt.playing && !shouldBePlaying) {
					evt.playing = false;
					if (evt.stop != null)
						evt.stop();
				}
			}


			if(evt.setTime != null)
				evt.setTime(time - evt.evt.time);
		}
	}

	/**
		Stops the playing events.
	**/
	public static function stopAllEvents(evts: Array<EventInstance>) {
		if (evts == null)
			return;

		for (evt in evts) {
			if (evt.playing) {
				evt.playing = false;
				if (evt.stop != null)
					evt.stop();
			}
		}
	}

	override function edit2(ctx:EditContext2) {
		super.edit2(ctx);
		ctx.build(
			<category("Event")>
				<slider field={time}/>
				<slider field={duration}/>
			</category>
		);
	}

	/**
		Returns this prefab.
	**/
	public function getEventPrefab() { return this; }

	#if editor

	override function edit( ctx ) {
		super.edit(ctx);
		var props = ctx.properties.add(new hide.Element('
			<div class="group" name="Event">
				<dl>
					<dt>Time</dt><dd><input type="number" value="0" field="time"/></dd>
					<dt>Duration</dt><dd><input type="number" value="0" field="duration"/></dd>
				</dl>
			</div>
		'),this, function(pname) {
			ctx.onChange(this, pname);
		});
	}

	override function getHideProps() : hide.prefab.HideProps {
		return {
			icon : "bookmark", name : "Event",
		};
	}

	/**
		Returns the label of the event in the editor timeline.
	**/
	public function getDisplayInfo(ctx: hide.prefab.EditContext) {
		return {
			label: name,
			loop: false
		};
	}

	/**
		Returns `true`.
	**/
	public function canEditDuration() : Bool {
		return true;
	};

	/**
		Sets the duration (editor only).
	**/
	public function setDuration(duration: Float) {
		this.duration = duration;

		if (this.name.toLowerCase() == "loop") {
			var fx3d = Std.downcast(getRoot().findFirstLocal3d(), hrt.prefab.fx.FX.FXAnimation);
			if (fx3d != null) {
				fx3d.initLoop();
			}
		}
	};

	#end

	static var _ = Prefab.register("event", Event);
}

/**
	A 3D object event of an FX timeline.
**/
@:prefabIcon(HuiRes.ui.icons.prefab.event3d)
class Event3D extends hrt.prefab.Object3D implements IEvent {
	/**
		The start time, in seconds.
	**/
	@:s public var time(default, set): Float = 0.0;
	/**
		The duration, in seconds (`0` for none).
	**/
	@:s public var duration: Float = 0.0;
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

	public function new(parent, shared: ContextShared) {
		super(parent, shared);
	}

	function set_time(v) {
		return time = v;
	}

	/**
		Returns `duration`.
	**/
	public function getDuration() {
		return duration;
	}

	/**
		Returns the event instance.
	**/
	public function prepare() : EventInstance {
		return {
			evt: this
		};
	}

	/**
		Returns this prefab.
	**/
	public function getEventPrefab() { return this; }

	#if editor

	override function edit( ctx ) {
		super.edit(ctx);
		var props = ctx.properties.add(new hide.Element('
			<div class="group" name="Event">
				<dl>
					<dt>Time</dt><dd><input type="number" value="0" field="time"/></dd>
					<dt>Duration</dt><dd><input type="number" value="0" field="duration"/></dd>
				</dl>
			</div>
		'),this, function(pname) {
			ctx.onChange(this, pname);
		});
	}

	override function getHideProps() : hide.prefab.HideProps {
		return {
			icon : "bookmark", name : "Event3D",
		};
	}

	/**
		Returns the label of the event in the editor timeline.
	**/
	public function getDisplayInfo(ctx: hide.prefab.EditContext) {
		return {
			label: name,
			loop: false
		};
	}

	/**
		Returns `true`.
	**/
	public function canEditDuration() : Bool {
		return true;
	};

	/**
		Sets the duration (editor only).
	**/
	public function setDuration(duration: Float) {
		this.duration = duration;
	};

	#end

	static var _ = Prefab.register("event3d", Event3D);
}
