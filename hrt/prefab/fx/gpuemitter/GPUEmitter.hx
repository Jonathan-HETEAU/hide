package hrt.prefab.fx.gpuemitter;

/**
	The space of the particles of a `GPUEmitter`.
**/
enum Mode {
	/**
		World space: the particles stay where they were emitted.
	**/
	World;
	/**
		The space of the emitter: the particles move with it.
	**/
	Local;
	/**
		A cube of size `cameraModeDistance` around the camera: the particles are spawned in it and wrap around it (rain, snow...).
	**/
	Camera;
}

/**
	The orientation of the particles of a `GPUEmitter`.
**/
enum Align {
	/**
		Facing the camera.
	**/
	FaceCam;
	/**
		Along their speed.
	**/
	Speed;
}

/**
	The initial speed of the particles of a `GPUEmitter`.
**/
enum SpeedMode {
	/**
		Along the normal of the spawn shape.
	**/
	Normal;
	/**
		No initial speed.
	**/
	None;
}

/**
	The parameters of a `GPUEmitterObject`.
**/
typedef Data = {
	/**
		The maximum number of particles.
	**/
	var maxCount : Int;
	/**
		The number of particles emitted per second (`0` to emit all at once).
	**/
	var rate : Int;
	/**
		Respawns the particles when they die.
	**/
	var infinite : Bool;
	/**
		The maximum lifetime, in seconds.
	**/
	var maxLifeTime : Float;
	/**
		The minimum lifetime, in seconds.
	**/
	var minLifeTime : Float;
	/**
		The maximum size.
	**/
	var maxSize : Float;
	/**
		The minimum size.
	**/
	var minSize : Float;
	/**
		The initial speed (not used: see `minStartSpeed` and `maxStartSpeed`).
	**/
	var startSpeed : Float;
	/**
		The absolute transform of the particle mesh.
	**/
	var trs : h3d.Matrix;
	/**
		The transform of the particle mesh, without the template transform.
	**/
	var meshTransform : h3d.Matrix; // trs without the template transform
	/**
		The space of the particles.
	**/
	var mode : Mode;
	/**
		The size of the cube around the camera (`Camera` mode).
	**/
	var cameraModeDistance : Float;
	/**
		The orientation of the particles.
	**/
	var align : Align;
	/**
		The initial speed mode.
	**/
	var speedMode : SpeedMode;
	/**
		The maximum initial speed.
	**/
	var maxStartSpeed : Float;
	/**
		The minimum initial speed.
	**/
	var minStartSpeed : Float;
}

/**
	A child of a `GPUEmitter` used as particle.
**/
typedef Template = {
	/**
		The meshes of the particle.
	**/
	var meshes : Array<h3d.scene.Mesh>;
	/**
		The made prefab.
	**/
	var prefab : hrt.prefab.Prefab;
	/**
		The emitters, one per mesh.
	**/
	var emitters : Array<GPUEmitterObject>;
}

/**
	A particle emitter simulated on the GPU with compute shaders. Its children are the particles (one `GPUEmitterObject` per mesh), and its `SpawnShader` and `SimulationShader` children customize the spawn and the simulation.
**/
@:access(hrt.prefab.fx.gpuemitter.GPUEmitterObject)
@:prefabIcon(HuiRes.ui.icons.prefab.gpu_emitter)
@:prefabName("GPU Emitter")
class GPUEmitter extends Object3D {

	static function getDefaultPrimitive() {
		return h3d.prim.Cube.defaultUnitCube();
	}

	@:s var rate : Int = 0;
	@:s var maxCount : Int = 512;
	@:s var minLifeTime : Float = 0.5;
	@:s var maxLifeTime : Float = 1.0;
	@:s var minStartSpeed : Float = 0.5;
	@:s var maxStartSpeed : Float = 1.0;
	@:s var minSize : Float = 0.5;
	@:s var maxSize : Float = 1.5;
	@:s var startSpeed : Float = 1.0;
	@:s var infinite : Bool = false;
	@:s var mode : Mode = World;
	@:s var cameraModeDistance : Float = 50.0;
	@:s var align : Align = FaceCam;
	@:s var speedMode : SpeedMode = Normal;

	var templates : Array<Template> = null;

	override function makeObject(parent3d : h3d.scene.Object) {
		var obj = super.makeObject(parent3d);

		inline function getData(trs : h3d.Matrix, meshTransform : h3d.Matrix) : Data {
			return {
				rate : rate,
				maxCount : maxCount,
				minLifeTime : minLifeTime,
				maxLifeTime : maxLifeTime,
				minSize : minSize,
				maxSize : maxSize,
				startSpeed : startSpeed,
				trs : trs,
				meshTransform : meshTransform,
				infinite : infinite,
				mode : mode,
				cameraModeDistance : cameraModeDistance,
				align : align,
				speedMode : speedMode,
				minStartSpeed : minStartSpeed,
				maxStartSpeed : maxStartSpeed,
			}
		}

		for (t in getTemplates()) {
			var invTemplate = new h3d.Matrix();
			var o3d = Std.downcast(t.prefab, Object3D);
			if (o3d != null)
				invTemplate.initInverse(o3d.getTransform());
			else
				invTemplate.identity();
			for (mesh in t.meshes) {
				var multimat = Std.downcast(mesh, h3d.scene.MultiMaterial);
				var materials : Array<h3d.mat.Material>;
				if (multimat == null)
					materials = [mesh.material];
				else
					materials = multimat.materials;
				var absPos = mesh.getAbsPos();
				var meshTransform = new h3d.Matrix();
				meshTransform.multiply(absPos, invTemplate);
				var emitter = new GPUEmitterObject(getData(absPos.clone(), meshTransform), cast(mesh.primitive, h3d.prim.MeshPrimitive), materials, obj);
				t.emitters.push(emitter);
				mesh.visible = false;
				mesh.ignoreCollide = true;

				emitter.customAnimations = [];
				var shaders = t.prefab.findAll(hrt.prefab.Shader);
				for (shader in shaders) {
					if (!shader.enabled) continue;
					hrt.prefab.fx.BaseFX.BaseFXTools.getCustomAnimations(shader, emitter.customAnimations, emitter.find(o -> Std.downcast(o, h3d.scene.MeshBatch)));
				}
				emitter.init();
				emitter.bakeAnimations();
			}
		}

		return obj;
	}

	override function makeChild(c : hrt.prefab.Prefab) {
		if (!Std.isOfType(c, hrt.prefab.Shader))
			return;
		super.makeChild(c);
	}

	override function edit2( ctx : hrt.prefab.EditContext2 ) {
		super.edit2(ctx);
		ctx.build(
			<category("Emitter")>
				<range(1, 8192) int field={rate}/>
				<range(1, 8192) int field={maxCount}/>
				<slider min={0.01} field={minLifeTime} poly/>
				<slider min={0.01} field={maxLifeTime} poly/>
				<slider min={0.01} field={minSize} poly/>
				<slider min={0.01} field={maxSize} poly/>
				<checkbox field={infinite}/>
				<select([{value:World, label:"World"}, {value:Local, label:"Local"}, {value:Camera, label:"Camera"}]) field={mode} onValueChange={(_) -> ctx.rebuildInspector()}/>
				<slider min={0.0} label="Camera distance" field={cameraModeDistance} if (mode == Camera)/>
				<select([{value:Speed, label:"Speed"}, {value:FaceCam, label:"Face cam"}]) field={align}/>
				<select([{value:Normal, label:"Normal"}, {value:None, label:"None"}]) label="Speed" field={speedMode}/>
				<slider min={0.01} field={minStartSpeed}/>
				<slider min={0.01} field={maxStartSpeed}/>
			</category>, null, function(isTemp) {
				// Remove old emitters
				if (templates != null) {
					for (t in templates) {
						for (e in t.emitters)
							e.remove();
					}
					templates = null;
				}

				ctx.rebuildPrefab(this);
			});
	}

	function getTemplates() : Array<Template> {
		#if editor
		return [];
		#end

		if (templates != null)
			return templates;

		templates = [];
		for (c in children) {
			if (Std.isOfType(c, hrt.prefab.Shader))
				continue;
			var obj = new h3d.scene.Object();
			var cloned = c.make(new ContextShared(obj));
			var clonedMeshes = obj.findAll(o -> Std.downcast(o, h3d.scene.Mesh));
			templates.push({meshes : clonedMeshes, prefab : cloned, emitters : []});
		}

		return templates;
	}

	#if editor
	override function setSelected(b : Bool) {
		return false;
	}

	override function getHideProps() : hide.prefab.HideProps {
		return { icon : "asterisk",
		name : "GPUEmitter",
		allowParent : function(p) return p.to(FX) != null || p.findParent(FX) != null
		};
	}

	override function edit( ctx : hide.prefab.EditContext ) {
		super.edit(ctx);
		var properties = new hide.Element('
		<div class="group" name="Emitter">
			<dl>
				<dt>Rate</dt><dd><input type="range" step="1" min="1" max="8192" field="rate"/></dd>
				<dt>Max count</dt><dd><input type="range" step="1" min="1" max="8192" field="maxCount"/></dd>
				<dt>Min life time</dt><dd><input type="range" min="0.1" max="10" field="minLifeTime"/></dd>
				<dt>Max life time</dt><dd><input type="range" min="0.1" max="10" field="maxLifeTime"/></dd>
				<dt>Min size</dt><dd><input type="range" min="0.1" max="10" field="minSize"/></dd>
				<dt>Max size</dt><dd><input type="range" min="0.1" max="10" field="maxSize"/></dd>
				<dt>Infinite</dt><dd><input type="checkbox" field="infinite"/></dd>
				<dt>Mode</dt>
				<dd>
					<select field="mode">
						<option value="World">World</option>
						<option value="Local">Local</option>
						<option value="Camera">Camera</option>
					</select>
				</dd>
				<div id="modeCamera">
					<dt>Camera distance</dt><dd><input type="range" min="0" field="cameraModeDistance"/></dd>
				</div>
				<dt>Align</dt>
				<dd>
					<select field="align">
						<option value="FaceCam">Face cam</option>
						<option value="Speed">Speed</option>
					</select>
				</dd>
				<dt>Speed</dt>
				<dd>
					<select field="speedMode">
						<option value="Normal">Normal</option>
						<option value="None">None</option>
					</select>
				</dd>
				<dt>Min start speed</dt><dd><input type="range" min="0.1" max="10" field="minStartSpeed"/></dd>
				<dt>Max start speed</dt><dd><input type="range" min="0.1" max="10" field="maxStartSpeed"/></dd>
			</dl>
		</div>
		');

		inline function refreshOptParams(name : String, condition : Bool) {
			var params = properties.find(name);
			if (condition)
				params.show();
			else
				params.hide();
		}

		refreshOptParams("#modeCamera", mode == Camera);
		ctx.properties.add(properties, this, function(pname) {
				ctx.onChange(this, pname);
				if (pname == "mode")
					refreshOptParams("#modeCamera", mode == Camera);
		});
	}
	#end

	static var _ = Prefab.register("gpuemitter", GPUEmitter);
}