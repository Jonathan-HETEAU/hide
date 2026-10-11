# hide.prefab.EditContext

**class** · package [`hide.prefab`](README.md) · source [`hide_js/hide/prefab/EditContext.hx`](../../../../../hide_js/hide/prefab/EditContext.hx) · available on editor (js)

Subclasses: [`hide.comp.SceneEditorContext`](../comp/SceneEditorContext.md), [`hide.view.FXEditContext`](../view/FXEditContext.md)

The context of the prefab edition: scene, properties panel, undo and updates.

## Constructor

### new

```haxe
function new(undo:hide.ui.UndoHistory):Void
```

Creates a context with an undo history.

## Variables

### rootPrefab

```haxe
var rootPrefab:hrt.prefab.Prefab
```

The root prefab.

### ide

```haxe
var ide(get, null):hide.Ide
```

The IDE.

### scene

```haxe
var scene:hide.comp.Scene
```

The scene.

### properties

```haxe
var properties:hide.comp.PropsEditor
```

The properties panel.

### cleanups

```haxe
var cleanups:Array<() -> Void>
```

The functions called by `SceneEditor.cleanup` (when the edition is rebuilt).

### parentContext

```haxe
var parentContext:EditContext
```

Multi edit context this context is a child of. Rebuild requests are forwarded to it
and queued until `flushChildRequests` is called

## Methods

### onChange

```haxe
function onChange(p:hrt.prefab.Prefab, propName:String):Void
```

Called when a property of a prefab changes: updates the instance and notifies the parents.

### getCurrentProps

```haxe
function getCurrentProps(p:hrt.prefab.Prefab):hide.Element
```

Returns the properties of a prefab. Throws: to override.

### addUpdate

```haxe
function addUpdate(f:(dt:Float) -> Void):Void
```

Adds a function called each frame.

### removeUpdate

```haxe
function removeUpdate(f:(dt:Float) -> Void):Void
```

Removes a function added by `addUpdate`.

### makeChanges

```haxe
function makeChanges(p:hrt.prefab.Prefab, f:() -> Void):Void
```

Applies changes to a prefab as an undoable step (saving its data before).

### screenToGround

```haxe
function screenToGround(x:Float, y:Float, ?forPrefab:hrt.prefab.Prefab):h3d.col.Point
```

Converts screen mouse coordinates into projection into ground.
If "forPrefab" is used, only this prefab is taken into account for ground consideration (self painting)

### positionToGroundZ

```haxe
function positionToGroundZ(x:Float, y:Float, ?forPrefab:hrt.prefab.Prefab):Float
```

Similar to screenToGround but based on 3D coordinates instead of screen ones

### flushChildRequests

```haxe
function flushChildRequests():() -> Void
```

Process the queued child requests. Returns a function to call after an undo/redo of
the edit, that rebuilds the same prefabs again and processes what the undo/redo queued

### rebuildProperties

```haxe
function rebuildProperties():Void
```

Rebuild the edit window

### rebuildPrefab

```haxe
function rebuildPrefab(p:hrt.prefab.Prefab, ?sceneOnly:Bool = false):Void
```

Force rebuilding makeInstance for the given hierarchy

### refreshTree

```haxe
function refreshTree():Void
```

Refresh the scene tree

### getNamedObjects

```haxe
function getNamedObjects(?exclude:h3d.scene.Object):Array<String>
```

Returns the paths of the named objects and joints of the scene.
