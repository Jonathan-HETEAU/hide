# hide.comp.SceneEditorContext

**class** · package [`hide.comp`](README.md) · module `hide.comp.SceneEditor` · source [`hide_js/hide/comp/SceneEditor.hx`](../../../../../hide_js/hide/comp/SceneEditor.hx) · available on editor (js)

Extends: [`hide.prefab.EditContext`](../prefab/EditContext.md)

The edit context of the selected prefabs in a `SceneEditor`.

## Constructor

### new

```haxe
function new(undo:hide.ui.UndoHistory, elts:Array<hrt.prefab._Prefab.PrefabElement>, editor:SceneEditor):Void
```

Creates the context.

## Variables

### editor

```haxe
var editor(default, null):SceneEditor
```

The scene editor.

### elements

```haxe
var elements:Array<hrt.prefab._Prefab.PrefabElement>
```

The edited prefabs.

### rootObjects

```haxe
var rootObjects(default, null):Array<h3d.scene.Object>
```

The parent 3D objects of the edited prefabs not under another edited prefab.

### rootObjects2D

```haxe
var rootObjects2D(default, null):Array<h2d.Object>
```

The parent 2D objects of the edited prefabs not under another edited prefab.

### rootElements

```haxe
var rootElements(default, null):Array<hrt.prefab._Prefab.PrefabElement>
```

The edited prefabs not under another edited prefab.

## Methods

### screenToGround

```haxe
override function screenToGround(x:Float, y:Float, ?forPrefab:hrt.prefab.Prefab):h3d.Vector
```

### positionToGroundZ

```haxe
override function positionToGroundZ(x:Float, y:Float, ?forPrefab:hrt.prefab.Prefab):Float
```

### getCurrentProps

```haxe
override function getCurrentProps(p:hrt.prefab.Prefab):hide.Element
```

### cleanup

```haxe
function cleanup():Void
```

Runs the cleanup functions of the edition.

### onChange

```haxe
override function onChange(p:hrt.prefab._Prefab.PrefabElement, pname:String):Void
```

## Inherited members

- from [`hide.prefab.EditContext`](../prefab/EditContext.md): `rootPrefab`, `ide`, `scene`, `properties`, `cleanups`, `onChange`, `getCurrentProps`, `addUpdate`, `removeUpdate`, `makeChanges`, `screenToGround`, `positionToGroundZ`, `parentContext`, `flushChildRequests`, `rebuildProperties`, `rebuildPrefab`, `refreshTree`, `getNamedObjects`
