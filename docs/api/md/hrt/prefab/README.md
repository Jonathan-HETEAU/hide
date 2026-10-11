# Package `hrt.prefab`

[← API index](../../README.md)

Sub-packages: [`hrt.prefab.editor`](editor/README.md), [`hrt.prefab.fx`](fx/README.md), [`hrt.prefab.l2d`](l2d/README.md), [`hrt.prefab.l3d`](l3d/README.md), [`hrt.prefab.pbr`](pbr/README.md), [`hrt.prefab.rfx`](rfx/README.md), [`hrt.prefab.terrain`](terrain/README.md), [`hrt.prefab.vlm`](vlm/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Cache`](Cache.md) | class | The shared cache of the models, textures and shaders loaded by the prefabs. |
| [`CascadeParams`](CascadeParams.md) | typedef | The parameters of a shadow cascade. |
| [`ContextMake`](ContextMake.md) | abstract | The context given to `Prefab.make`: a `ContextShared`, or the parent 2D or 3D object of the instance (converted to a new `ContextShared`). |
| [`ContextShared`](ContextShared.md) | typedef | The context shared by all the prefabs of a prefab hierarchy (but not by references): the root objects, the current parents during `make`, the source path, and the loading of the resources and baked data. |
| [`ContextSharedBase`](ContextSharedBase.md) | class | The context shared by all the prefabs of a prefab hierarchy (but not by references): the root objects, the current parents during `make`, the source path, and the loading of the resources and baked data. |
| [`CrashTest`](CrashTest.md) | class | Editor debug only prefab that allow to test various crash situations in the editor Should never be loaded in a game |
| [`CrashTestObject`](CrashTestObject.md) | class | The object of a `CrashTest` prefab. |
| [`CullingContainer`](CullingContainer.md) | class | A group of objects hidden when farther than `cullDistance` from the camera (always visible in the editor). |
| [`CullingContainerObject`](CullingContainerObject.md) | class | An object hidden (with its children) when it is farther than a distance from the camera. |
| [`Curve`](Curve.md) | class | An animation curve: keys interpolated over time, used by the FX and the emitters (named `property:component`, such as `scale:x`). |
| [`CurveBlendMode`](CurveBlendMode.md) | enum abstract | How a curve gets its values. |
| [`CurveHandle`](CurveHandle.md) | class | A bezier handle of a curve key, relative to the key. |
| [`CurveKey`](CurveKey.md) | class | A key of a curve. |
| [`CurveKeyMode`](CurveKeyMode.md) | enum abstract | How a curve is interpolated around a key. |
| [`CurveKeys`](CurveKeys.md) | typedef | The keys of a curve. |
| [`Diff`](Diff.md) | class | Utility class to get the difference between two dynamics |
| [`DiffResult`](DiffResult.md) | enum | The result of a diff between two values. |
| [`DynamicShader`](DynamicShader.md) | class | Applies a shader given by its source path: a `.hx` shader class or a shader graph (`.shgraph`), with its parameters in `props`. |
| [`EditContext2`](EditContext2.md) | class | The context of the inspector of a prefab in the editor (`Prefab.edit2`): the scenes, the editor tools, and the editor services. |
| [`EditMode`](EditMode.md) | enum | How a reference can be edited in the editor. |
| [`GradientFollower`](GradientFollower.md) | class | An object following a 3D object, scaled by the perspective (editor only). |
| [`Inclusion`](Inclusion.md) | enum | Whether a pass query includes or excludes the passes. |
| [`Light`](Light.md) | class | A PBR light (`h3d.scene.pbr.Light`): point, directional, spot, capsule or rectangle, with its shadows. |
| [`LightKind`](LightKind.md) | enum abstract | The type of a light. |
| [`LightShadows`](LightShadows.md) | typedef | The shadows of a light. |
| [`Macros`](Macros.md) | class | The macros of the prefabs: they generate the serialization (`@:s` fields), copy and clone code of the prefab classes (`buildPrefab`, `buildSerializable`). |
| [`Material`](Material.md) | class | Applies material properties to the materials of the parent object: the material of the same name (or `materialName`), or all of them. |
| [`MaterialLibrary`](MaterialLibrary.md) | class | A library of materials, that `Material` prefabs can reference. |
| [`MaterialSelector`](MaterialSelector.md) | class | Selects material passes of the parent object (by pass name or blend mode), for the prefabs applying changes to the materials. |
| [`Model`](Model.md) | class | A 3D model (`source`), with an optional animation. |
| [`Object2D`](Object2D.md) | class | A prefab with a 2D transform, creating a 2D object (`local2d`). |
| [`Object3D`](Object3D.md) | class | A prefab with a 3D transform, creating a 3D object (`local3d`) in the scene. |
| [`OverrideProperty`](OverrideProperty.md) | typedef | A property of a referenced material library material overridden by a `Material` prefab. |
| [`PassQuery`](PassQuery.md) | typedef | A query of material passes, by name. |
| [`Prefab`](Prefab.md) | class | The base class of the prefabs: the serializable nodes of the data edited in Hide (`.prefab`, `.fx`, `.l3d`... |
| [`PrefabField`](PrefabField.md) | typedef | A serialized field of a prefab type (see `Prefab.getSerializableProps`). |
| [`PrefabFieldType`](PrefabFieldType.md) | enum | The type of a serialized prefab field. |
| [`PrefabInfo`](PrefabInfo.md) | typedef | A registered prefab type. |
| [`PrefabMeta`](PrefabMeta.md) | typedef | The metadata of a serialized prefab field. |
| [`PropDef`](PropDef.md) | typedef | A property of a prefab. |
| [`PropType`](PropType.md) | enum | The type of a property of a prefab (for the shader parameters and the generic properties editor). |
| [`Reference`](Reference.md) | class | True if the loaded source, or a reference inside it, creates a reference cycle |
| [`RenderProfile`](RenderProfile.md) | class | A prefab containing `RenderProps`, applied to the renderer. |
| [`RenderProps`](RenderProps.md) | class | The properties of the renderer (`h3d.scene.Renderer.props`), by material setup, with the renderer effects (`hrt.prefab.rfx.RendererFX` children). |
| [`RenderPropsObject`](RenderPropsObject.md) | class | The 3D object of a `RenderProps` prefab. |
| [`Resource`](Resource.md) | class | A prefab file resource (`.prefab`, `.fx`, `.l3d`...): `load()` returns its prefab, cached and reloaded when the file changes. |
| [`SceneEditorAPI`](SceneEditorAPI.md) | interface | The scene editor API available to the prefabs in the editor. |
| [`SelectedPass`](SelectedPass.md) | typedef | A pass selected by a `MaterialSelector`. |
| [`SettingCategory`](SettingCategory.md) | enum | How an editor setting is shared between the inspectors. |
| [`Shader`](Shader.md) | class | Applies a shader to the materials of the parent object. |
| [`ShaderDef`](ShaderDef.md) | typedef | A shader loaded by `ContextShared.loadShader`, with the initial values of its parameters. |
| [`ShaderDefCache`](ShaderDefCache.md) | typedef | The shaders loaded, by path. |
| [`ShadowSamplingESM`](ShadowSamplingESM.md) | typedef | Exponential shadow map sampling. |
| [`ShadowSamplingKind`](ShadowSamplingKind.md) | enum abstract | The sampling of a shadow map. |
| [`ShadowSamplingMode`](ShadowSamplingMode.md) | typedef | The sampling of a shadow map. |
| [`ShadowSamplingPCF`](ShadowSamplingPCF.md) | typedef | Percentage closer filtering sampling. |
| [`TreeChangedResult`](TreeChangedResult.md) | enum | What a prefab does when a child changed in the editor (see `Prefab.onEditorTreeChanged`). |
| [`Unknown`](Unknown.md) | class | Allow openning prefabs with a type not found in the project, keeping the data unchanged. |
