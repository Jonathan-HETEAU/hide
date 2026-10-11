# hrt.prefab.SceneEditorAPI

**interface** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/SceneEditorAPI.hx`](../../../../../hrt/prefab/SceneEditorAPI.hx)

Implemented by: [`hide.comp.HideSceneEditorAPI`](../../hide/comp/HideSceneEditorAPI.md)

The scene editor API available to the prefabs in the editor.

## Methods

### getRootPrefab

```haxe
function getRootPrefab():Prefab
```

Returns the root prefab edited.

### selectPrefabs

```haxe
function selectPrefabs(prefabs:Array<Prefab>):Void
```

Selects the prefabs.

### focusObjects

```haxe
function focusObjects(objects:Array<h3d.scene.Object>):Void
```

Moves the camera to show the objects.
