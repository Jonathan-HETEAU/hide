# hide.prefab.HideJsEditContext2

**class** · package [`hide.prefab`](README.md) · module `hide.prefab.EditContext` · source [`hide_js/hide/prefab/EditContext.hx`](../../../../../hide_js/hide/prefab/EditContext.hx) · available on editor (js)

Extends: [`hrt.prefab.EditContext2`](../../hrt/prefab/EditContext2.md)

The `EditContext2` of the HIDE editor, wrapping an `EditContext`.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.EditContext2, ctx:EditContext):Void
```

Creates the context.

## Methods

### rebuildInspector

```haxe
override function rebuildInspector():Void
```

### saveSetting

```haxe
override function saveSetting(category:hrt.prefab.SettingCategory, key:String, value:Dynamic):Void
```

### getSetting

```haxe
override function getSetting(category:hrt.prefab.SettingCategory, key:String):Null<Dynamic>
```

### getScene3d

```haxe
override function getScene3d():h3d.scene.Scene
```

### getScene2d

```haxe
override function getScene2d():h2d.Scene
```

### getCameraController3d

```haxe
override function getCameraController3d():hide.view.CameraControllerBase
```

### getRootObjects3d

```haxe
override function getRootObjects3d():Array<h3d.scene.Object>
```

### openFile

```haxe
override function openFile(path:String):Void
```

### rebuildRenderProps

```haxe
override function rebuildRenderProps():Void
```

### rebuildPrefabImpl

```haxe
override function rebuildPrefabImpl(prefab:hrt.prefab.Prefab):Void
```

### rebuildPrefabInteractive

```haxe
override function rebuildPrefabInteractive(prefab:hrt.prefab.Prefab):Void
```

### chooseFileSave

```haxe
override function chooseFileSave(path:String, callback:(absPath:String) -> Void, ?allowNull:Bool = false):Void
```

### rebuildTreeImpl

```haxe
override function rebuildTreeImpl():Void
```

### listMaterialLibraries

```haxe
override function listMaterialLibraries(path:String):Array<{ path:String, name:String }>
```

### listModelAnimations

```haxe
override function listModelAnimations(path:String):Array<String>
```

### openPrefab

```haxe
override function openPrefab(path:String, ?afterOpen:(api:hrt.prefab.SceneEditorAPI) -> Void):Void
```

### quickError

```haxe
override function quickError(message:String):Void
```

### screenToGround

```haxe
override function screenToGround(sx:Float, sy:Float, ?paintOn:hrt.prefab.Prefab, ?ignoreTerrain:Bool = false):h3d.Vector
```

## Inherited members

- from [`hrt.prefab.EditContext2`](../../hrt/prefab/EditContext2.md): `root`, `s3d`, `s2d`, `foregroundEditorTool`, `otherEditorTools`, `animName`, `rebuildInspector`, `rebuildPrefab`, `rebuildPrefabInteractive`, `rebuildTree`, `rebuildRenderProps`, `rebuildTreeImpl`, `getScene3d`, `getScene2d`, `getCameraController3d`, `openFile`, `openPrefab`, `chooseFileSave`, `listMaterialLibraries`, `listModelAnimations`, `quickError`, `screenToGround`, `recordUndo`, `quickTool`
