# hide.prefab.ContextShared

**class** · package [`hide.prefab`](README.md) · source [`hide_js/hide/prefab/ContextShared.hx`](../../../../../hide_js/hide/prefab/ContextShared.hx) · available on editor (js)

Extends: [`hrt.prefab.ContextSharedBase`](../../hrt/prefab/ContextSharedBase.md)

The shared context of the prefabs in the editor: adds the scene editor and scene.

## Constructor

### new

```haxe
function new(?path:String, ?root2d:h2d.Object, ?root3d:h3d.scene.Object, ?isInstance:Bool = true):Void
```

Creates the context.

## Variables

### editor

```haxe
var editor:hide.comp.SceneEditor
```

The scene editor, or null.

### scene

```haxe
var scene:hide.comp.Scene
```

The scene.

### editorDisplay

```haxe
var editorDisplay:Bool
```

Shows the editor helpers (light gizmos for example) even when not selected.

## Methods

### onError

```haxe
override function onError(e:Dynamic):Void
```

### loadShader

```haxe
override function loadShader(path:String):Null<hide.tools.CachedShader>
```

### loadModel

```haxe
override function loadModel(path:String, ?opt:Bool = false):Null<h3d.scene.Object>
```

### loadAnimation

```haxe
override function loadAnimation(path:String):Null<h3d.anim.Animation>
```

### loadTexture

```haxe
override function loadTexture(path:String, ?async:Bool = false):Null<h3d.mat.Texture>
```

### saveTexture

```haxe
override function saveTexture(file:String, bytes:Bytes, dir:String, ext:String):Void
```

### savePrefabDat

```haxe
override function savePrefabDat(file:String, ext:String, p:String, bytes:Bytes):Void
```

## Inherited members

- from [`hrt.prefab.ContextSharedBase`](../../hrt/prefab/ContextSharedBase.md): `root2d`, `root3d`, `currentPath`, `prefabSource`, `customMake`, `current3d`, `current2d`, `parentPrefab`, `findCache`, `isInstance`, `isTempLoad`, `isTempSave`, `onError`, `getFolderDatPath`, `loadDir`, `loadPrefabDat`, `getPrefabDatPath`, `savePrefabDat`, `loadShader`, `loadModel`, `loadAnimation`, `loadTexture`, `loadBytes`, `loadBakedBytes`, `saveBakedBytes`, `saveTexture`, `getObjects`
