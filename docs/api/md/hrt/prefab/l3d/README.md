# Package `hrt.prefab.l3d`

[← API index](../../../README.md)

Sub-packages: [`hrt.prefab.l3d.modellibrary`](modellibrary/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AnimSpeedControl`](AnimSpeedControl.md) | class | Sets the speed of the current animation of its parent object. |
| [`BatchData`](BatchData.md) | typedef | A mesh batch of a `MeshSpray`, for a model. |
| [`BillboardObj`](BillboardObj.md) | class | A textured quad facing the camera. |
| [`BillboardShader`](BillboardShader.md) | class | Makes the mesh face the camera, with a uniform scale. |
| [`Box`](Box.md) | class | A unit box, displayed with a debug color in the editor. |
| [`Camera`](Camera.md) | class | A camera position, with its field of view, planes and renderer effects (children), previewable in the editor. |
| [`CameraSyncObject`](CameraSyncObject.md) | class | The object of a `Camera`: applies its field of view and planes to the scene camera when enabled. |
| [`Constraint`](Constraint.md) | class | Makes an object follow another one (`h3d.scene.Object.follow`). |
| [`Decal`](Decal.md) | class | A volume decal: projects textures on the surfaces inside its unit box. |
| [`DecalMode`](DecalMode.md) | enum abstract | How a `Decal` is rendered. |
| [`Environment`](Environment.md) | class | An environment map for PBR lighting, computed from a sky texture and stored next to the prefab. |
| [`GameController`](GameController.md) | class | Controls the object with a gamepad in the editor (Start to toggle), with a third person camera. |
| [`GenSDF`](GenSDF.md) | class | Renders the signed distance field of a polygon (up to 256 points). |
| [`HandleType`](HandleType.md) | enum | A handle of the spline edition. |
| [`HeightGrid`](HeightGrid.md) | class | A grid primitive for the tiles of a `HeightMap`, displaced by the shader. |
| [`HeightMaPTexturePathKind`](HeightMaPTexturePathKind.md) | enum abstract | The kind of a texture of a `HeightMap`. |
| [`HeightMap`](HeightMap.md) | class | A terrain displaced by height textures, optionally made of tiles. |
| [`HeightMapMesh`](HeightMapMesh.md) | class | The object of a `HeightMap`: shows the tiles visible by the camera, created on demand. |
| [`HeightMapShader`](HeightMapShader.md) | class | Displaces the grid by the height texture and blends the albedo textures. |
| [`HeightMapTile`](HeightMapTile.md) | class | A tile of a `HeightMap`, of size `size`. |
| [`Instance`](Instance.md) | class | An instance of a CastleDB line: displays the model (or prefab) referenced by the line in the editor. |
| [`InstanceData`](InstanceData.md) | typedef | The instances of a mesh along a spline. |
| [`KitTest`](KitTest.md) | class | A cube prefab with properties of all kinds, to test the editor kit (`hide.kit`). |
| [`KitTestTool1`](KitTestTool1.md) | class | An empty tool, to test the editor kit. |
| [`KitTestTool2`](KitTestTool2.md) | class | An empty tool, to test the editor kit. |
| [`Layer2D`](Layer2D.md) | typedef | A layer of `Layers2D`: a map of values painted on the ground. |
| [`Layer2DRFX`](Layer2DRFX.md) | class | The renderer effect displaying the painted layer. |
| [`Layer2DValue`](Layer2DValue.md) | typedef | A value of a `Layer2D`. |
| [`LayerView2DRFXShader`](LayerView2DRFXShader.md) | class | Displays the painted layer over the scene. |
| [`Layers2D`](Layers2D.md) | class | Layers of values painted on the ground in the editor (zones, materials...), stored as images next to the prefab. |
| [`Layers2DTool`](Layers2DTool.md) | class | The tool painting the layers of a `Layers2D`. |
| [`Level3D`](Level3D.md) | class | Alias of Object for compatibility with the old prefab system |
| [`ListItem`](ListItem.md) | typedef | An item of a list, to test the editor kit. |
| [`LocalVolumetricLighting`](LocalVolumetricLighting.md) | class | A local volume of fog, in a unit cube scaled by the transform. |
| [`LocalVolumetricLightingObject`](LocalVolumetricLightingObject.md) | class | The object of a `LocalVolumetricLighting`: a unit cube rendered from inside or outside. |
| [`LocalVolumetricShader`](LocalVolumetricShader.md) | class | Renders a volume of fog by integrating it along the view ray. |
| [`MeshGenerator`](MeshGenerator.md) | class | Builds a mesh from models attached to the sockets of each other. |
| [`MeshGeneratorRoot`](MeshGeneratorRoot.md) | class | The object of a `MeshGenerator`: syncs only when it moves. |
| [`MeshPart`](MeshPart.md) | class | A part of a `MeshGenerator`: a model attached to a socket of its parent part. |
| [`MeshSpray`](MeshSpray.md) | class | Places models on the ground with a brush in the editor, rendered with mesh batches (optionally split in cells, or stored in binary). |
| [`MeshSprayObject`](MeshSprayObject.md) | class | The object of a `MeshSpray`: renders the meshes with mesh batches. |
| [`Particles3D`](Particles3D.md) | class | GPU particles (`h3d.parts.GpuParticles`), loaded from `source` or the saved data. |
| [`PointsArray`](PointsArray.md) | typedef | The storage of the trail points. |
| [`Polygon`](Polygon.md) | class | A mesh of a simple shape, or of a custom polygon in the XY plane. |
| [`PolygonEditor2`](PolygonEditor2.md) | class | The tool editing the points of a custom polygon. |
| [`PolygonEditorHandle2`](PolygonEditorHandle2.md) | class | A handle of a point of the polygon editor. |
| [`PrefabSpray`](PrefabSpray.md) | class | Places prefabs on the ground with a brush, in the editor. |
| [`PrimCache`](PrimCache.md) | typedef | The primitives of the shapes, shared by the polygons. |
| [`ProjectedDisplay`](ProjectedDisplay.md) | class | Displays a polygon projected on the ground, with a decal. |
| [`Set`](Set.md) | typedef | A set of sources with a spray configuration. |
| [`SetGroup`](SetGroup.md) | typedef | A group of sets. |
| [`Shape`](Shape.md) | enum | The shape of a `Polygon`. |
| [`SignedDistanceField3D`](SignedDistanceField3D.md) | class | Renders a multi-channel signed distance field font. |
| [`Socket`](Socket.md) | class | A socket of a model, where a part can be attached: an object named `Socket_<type>` or `Socket_<type>_<name>`. |
| [`Source`](Source.md) | typedef | A model or prefab that can be sprayed. |
| [`SplatMode`](SplatMode.md) | enum abstract | How the splat maps give the weights of the albedo textures. |
| [`Spline`](Spline.md) | class | A 3D curve through points, editable in the editor. |
| [`SplineMesh`](SplineMesh.md) | class | A mesh along its parent `Spline`. |
| [`SplineMeshObject`](SplineMeshObject.md) | class | The mesh of a `SplineMesh`, with bounds following the spline. |
| [`SplineMeshSpawner`](SplineMeshSpawner.md) | class | Repeats its child meshes along its parent `Spline`. |
| [`SplineMeshSpawnerObject`](SplineMeshSpawnerObject.md) | class | The object of a `SplineMeshSpawner`. |
| [`SplineObject`](SplineObject.md) | class | The object of a `Spline`: invalidates its samples when it moves. |
| [`SplinePoint`](SplinePoint.md) | class | A point of a spline. |
| [`SplineShape`](SplineShape.md) | enum | The interpolation between the points of a spline. |
| [`SplineUV`](SplineUV.md) | class | Uses the texture coordinates of the spline mesh. |
| [`Spray`](Spray.md) | class | The base of `MeshSpray`: places models or prefabs on the ground with a brush, in the editor. |
| [`SprayConfig`](SprayConfig.md) | typedef | The configuration of the spray brush. |
| [`SprayObject`](SprayObject.md) | class | The object of a `Spray`. |
| [`SubStruct`](SubStruct.md) | typedef | A recursive structure, to test the editor kit. |
| [`TestAbstractInt`](TestAbstractInt.md) | enum abstract | An int enum abstract, to test the editor kit. |
| [`TestAbstractString`](TestAbstractString.md) | enum abstract | A string enum abstract, to test the editor kit. |
| [`TestEnum`](TestEnum.md) | enum | An enum, to test the editor kit. |
| [`Text3D`](Text3D.md) | class | A text in 3D, with a signed distance field font. |
| [`Text3DMesh`](Text3DMesh.md) | class | A text in 3D, laid out by a `h2d.Text`. |
| [`Text3DPrimitive`](Text3DPrimitive.md) | class | The primitive of a `Text3DMesh`: the glyphs as quads in the XY plane. |
| [`TextureItem`](TextureItem.md) | typedef | A texture of a `HeightMap`. |
| [`Trail`](Trail.md) | class | Use Trails instead of this class |
| [`TrailHead`](TrailHead.md) | class | A trail of a `TrailObj` (a struct on HashLink). |
| [`TrailObj`](TrailObj.md) | class | The mesh of `Trails`: several trails following positions, built each frame. |
| [`TrailOrientation`](TrailOrientation.md) | enum | The orientation of the trails. |
| [`TrailPoint`](TrailPoint.md) | class | A point of a trail (a struct on HashLink). |
| [`Trails`](Trails.md) | class | Trails following the object (or positions given to the `TrailObj`), with a width fading over their lifetime. |
| [`TrailsArray`](TrailsArray.md) | typedef | The storage of the trails. |
| [`UVMode`](UVMode.md) | enum | How the texture coordinate U goes along the trails. |
| [`UVRepeat`](UVRepeat.md) | enum | How the texture coordinate U repeats. |
| [`WorldProjectedCollider`](WorldProjectedCollider.md) | class | A collider of a polygon projected on the ground. |
