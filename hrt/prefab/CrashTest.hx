package hrt.prefab;

/**
	Editor debug only prefab that allow to test various crash situations in the editor
	Should never be loaded in a game
**/
@:prefabName("Crash Test")
@:prefabIcon(HuiRes.ui.icons.prefab.crash_test)
@:prefabHideInAddMenu
class CrashTest extends hrt.prefab.Object3D {
	/**
		Throws when the prefab is loaded.
	**/
	@:s public var crashOnLoad: Bool = false;
	/**
		Throws when the inspector is opened.
	**/
	@:s public var crashOnInspector: Bool = false;
	/**
		Throws when the prefab is made.
	**/
	@:s public var crashOnMake: Bool = false;
	/**
		Throws when its object is synchronized.
	**/
	@:s public var crashOnSync: Bool = false;
	/**
		Throws when the instance is updated.
	**/
	@:s public var crashOnUpdateInstance: Bool = false;

	override public function load(data: Dynamic) {
		super.load(data);
		if (crashOnLoad) {
			throw "CrashTest crashOnLoad";
		}
	}

	override public function copy(p: Dynamic) {
		super.copy(p);
	}

	override public function makeObject(parent3d:h3d.scene.Object) : h3d.scene.Object {
		if (crashOnMake) {
			throw "CrastTest crashOnMake";
		}

		return new CrashTestObject(this, parent3d);
	}

	override function edit2(ctx) {
		super.edit2(ctx);

		ctx.build(
			<category("Crash Test")>
				<checkbox field={crashOnLoad}/>
				<checkbox field={crashOnInspector}/>
				<checkbox field={crashOnMake} onValueChange={(_)->ctx.rebuildPrefab(this)}/>
				<checkbox field={crashOnSync}/>
				<checkbox field={crashOnUpdateInstance}/>
			</category>
		);

		if(crashOnInspector) {
			throw "CrashTest crashOnInspector";
		}
	}

	override function updateInstance(?propName:String) {
		super.updateInstance(propName);
		if (crashOnUpdateInstance)
			throw "CrashTest crashOnUpdateInstance";
	}

	static var _ = Prefab.register("crashTest", CrashTest);
}

/**
	The object of a `CrashTest` prefab.
**/
class CrashTestObject extends h3d.scene.Object {
	var prefab : CrashTest;

	/**
		Creates the object of the prefab.
	**/
	public function new(prefab: CrashTest, ?parent: h3d.scene.Object) {
		super(parent);
		this.prefab = prefab;
	}

	override function sync(ctx:h3d.scene.RenderContext) {
		super.sync(ctx);
		if (prefab.crashOnSync) {
			throw "CrashTest crashOnSync";
		}
	}
}