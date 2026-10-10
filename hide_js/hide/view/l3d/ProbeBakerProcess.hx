package hide.view.l3d;

/**
	Bakes a volumetric lightmap over several frames.
**/
class ProbeBakerProcess {

	/**
		The baked ratio, from 0 to 1.
	**/
	public var progress : Float = 0.;

	var lightProbeBaker : hide.view.l3d.LightProbeBaker;
	var volumetricLightmap : hrt.prefab.vlm.VolumetricLightmap;
	var bakeTime : Float;
	var resolution : Int;

	/**
		Creates the process of a volumetric lightmap, baking for `bakeTime` seconds per frame.
	**/
	public function new(volumetricLightmap, res, useGPU, bakeTime = 0.016 ){
		progress = 0;
		this.bakeTime = bakeTime;
		this.volumetricLightmap = volumetricLightmap;
		this.resolution = res;
		lightProbeBaker = new hide.view.l3d.LightProbeBaker();
		lightProbeBaker.useGPU = useGPU;
	}

	/**
		Prepares the scene to bake.
	**/
	public function init( env : h3d.scene.pbr.Environment, sceneData : hrt.prefab.Prefab, scene : hide.comp.Scene) {
		lightProbeBaker.initScene(sceneData, scene, env);
	}

	/**
		Bakes the next probes.
	**/
	public function update(dt:Float) {
		lightProbeBaker.bake(volumetricLightmap.volumetricLightmap, resolution, bakeTime);
		progress = (volumetricLightmap.volumetricLightmap.lastBakedProbeIndex +1.0) / volumetricLightmap.volumetricLightmap.getProbeCount();
		if( progress == 1 ) {
			lightProbeBaker.dispose();
			lightProbeBaker = null;
			onEnd();
		}
	}

	/**
		Called when all the probes are baked.
	**/
	public dynamic function onEnd() {

	}

}
