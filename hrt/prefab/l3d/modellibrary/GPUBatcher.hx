package hrt.prefab.l3d.modellibrary;

/**
	Instances of a mesh, with their transforms in a GPU buffer.
**/
typedef EmitUnit = {
	/**
		The mesh.
	**/
	var mesh : h3d.scene.Mesh;
	/**
		The transforms.
	**/
	var modelViews : h3d.Buffer;
	/**
		The number of instances.
	**/
	var count : Int;
}

/**
	A copy of transforms into a mesh batch.
**/
typedef CopyInfo = {
	/**
		The transforms of the instances.
	**/
	var modelViews : h3d.Buffer;
	/**
		The first instance.
	**/
	var start : Int;
	/**
		The number of instances.
	**/
	var size : Int;
	/**
		The mesh batch.
	**/
	var batch : h3d.scene.MeshBatch;
	/**
		The baked material.
	**/
	var bakedMat : ModelLibrary.BakedMaterialData;
}
/**
	A `Batcher` filled from GPU buffers of transforms, with GPU culling and LOD for large batches.
**/
@:access(hrt.prefab.l3d.modellibrary.MeshEmitter)
@:access(hrt.prefab.l3d.modellibrary.ModelLibrary)
@:allow(hrt.prefab.l3d.modellibrary.ModelLibrary)
class GPUBatcher extends Batcher {

	var basicCopyShaders : hxsl.ShaderList;
	var fullCopyShaders : hxsl.ShaderList;

	var copyShader : GPUBatcherShaders.CopyModelViews;
	var uvTransformShader : GPUBatcherShaders.CopyUvTransform;
	var libraryParamShader : GPUBatcherShaders.CopyLibraryParams;

	var currentBatchCount : Int;
	/**
		The number of batches from which `h3d.scene.GPUMeshBatch` is used.
	**/
	public var GPUMeshBatchThreshold : Int = 100;

	/**
		Creates the batcher.
	**/
	public function new(parent : h3d.scene.Object, library : ModelLibrary){
		super(parent, library);
		copyShader = new GPUBatcherShaders.CopyModelViews();
		uvTransformShader = new GPUBatcherShaders.CopyUvTransform();
		libraryParamShader = new GPUBatcherShaders.CopyLibraryParams();
		basicCopyShaders = new hxsl.ShaderList(copyShader);

		fullCopyShaders = hxsl.ShaderList.addSort(uvTransformShader, basicCopyShaders);
		fullCopyShaders = hxsl.ShaderList.addSort(libraryParamShader, fullCopyShaders);
	}

	override function defaultCreateMeshBatch(?props : h3d.mat.PbrMaterial.PbrProps, ?material : h3d.mat.Material) {
		var batch : h3d.scene.MeshBatch;
		if(currentBatchCount > GPUMeshBatchThreshold) {
			var gpuBatch = new h3d.scene.GPUMeshBatch(getPrimitive(), null, this);
			gpuBatch.primitiveSubMeshes = [];
			gpuBatch.enableGpuCulling();
			gpuBatch.enableGpuLod();
			batch = gpuBatch;
		}
		else {
			batch = new h3d.scene.MeshBatch(getPrimitive(), null, this);
			batch.enableStorageBuffer();
		}

		batch.forceGpuUpdate();
		batch.calcBounds = false;

		setupMeshBatch(batch, props, material);

		batch.fixedPosition = true;
		return batch;
	}

	override function emitInstance(mesh : h3d.scene.Mesh, ?absPos : h3d.Matrix, ?cb : (h3d.scene.MeshBatch, Int) -> Void) {
		throw "Unit emitInstance is not compatible with GPU Batcher, use emitInstances with GPU data or use a Batcher instead";
	}

	/**
		Adds the instances, in a single call. Throws if instances were already added.
	**/
	public function emitInstances(emitList : Array<EmitUnit>, ctx : h3d.scene.RenderContext) {
		if(batches.length > 0) {
			throw "GPUBatcher is currently incompatible with additive instancing, please group them in one call";
			//To make it work, we need to copy existing buffers content as soon as they are extended by new emits.
		}
		var copyList = new List<CopyInfo>();
		emitList.sort((e1,e2) -> e2.count - e1.count);
		for(unit in emitList){
			currentBatchCount = unit.count;
			for(i in 0...unit.count){
				super.emitInstance(unit.mesh);
			}

			var meshEmitter = library.getMeshEmitter(unit.mesh);
			for ( materialIndex => bakedMaterial in meshEmitter.bakedMaterials ) {
				var batch = getBatch(bakedMaterial, materialIndex, meshEmitter);
				copyList.push({ modelViews : unit.modelViews,
								start : batch.instanceCount - unit.count,
								size : unit.count,
								batch : batch,
								bakedMat : bakedMaterial});
			}
		}

		iterateBatches(batch -> batch.flush());

		for(copyUnit in copyList){
			var batch = copyUnit.batch;
			var p = @:privateAccess copyUnit.batch.dataPasses;
			var bakedMat = copyUnit.bakedMat;
			while( p != null ) {
					copyShader.positions = copyUnit.modelViews;
					copyShader.positionsOut = p.buffers[0];
					copyShader.start = copyUnit.start;

					if(p.buffers[0].format.hasInput("uvTransform") && p.buffers[0].format.hasInput("libraryParams")){
						uvTransformShader.uvTransformOut = p.buffers[0];
						uvTransformShader.uvTransform.set(bakedMat.uvX, bakedMat.uvY, bakedMat.uvSX, bakedMat.uvSY);
						libraryParamShader.libraryParamsOut = p.buffers[0];
						libraryParamShader.libraryParams.set(bakedMat.texId, 1.0 / library.atlasResolution / bakedMat.uvSX, 0.0, 0.0);
						ctx.computeList(fullCopyShaders);
					} else {
						ctx.computeList(basicCopyShaders);
					}

					ctx.computeDispatch(copyUnit.size);
					p = p.next;
			}
		}
	}
}
