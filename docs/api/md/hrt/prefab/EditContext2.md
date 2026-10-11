# hrt.prefab.EditContext2

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/EditContext2.hx`](../../../../../hrt/prefab/EditContext2.hx)

Subclasses: [`hide.prefab.HideJsEditContext2`](../../hide/prefab/HideJsEditContext2.md)

The context of the inspector of a prefab in the editor (`Prefab.edit2`): the scenes, the editor tools, and the editor services.

## Constructor

### new

```haxe
function new(parent:EditContext2):Void
```

Creates a context, child of `parent`.

## Variables

### root _(editor (js) only)_

```haxe
var root:hide.kit.KitRoot
```

The root of the inspector elements.

### s3d

```haxe
var s3d(get, null):h3d.scene.Scene
```

The 3D scene of the editor.

### s2d

```haxe
var s2d(get, null):h2d.Scene
```

The 2D scene of the editor.

### foregroundEditorTool

```haxe
var foregroundEditorTool:hrt.prefab.editor.Tool
```

The editor tool receiving the inputs first.

### otherEditorTools

```haxe
var otherEditorTools:Array<hrt.prefab.editor.Tool>
```

The other active editor tools.

## Methods

### animName

```haxe
function animName(path:String):String
```

Returns the display name of an animation file (without `Anim_` prefix, extension and `_loop` suffix).

### rebuildInspector

```haxe
function rebuildInspector():Void
```

Request the inspector to be rebuild, resulting in edit2 to be called again

### rebuildPrefab

```haxe
function rebuildPrefab(prefab:Prefab):Void
```

Request that the given prefab should be recreated in the editor

### rebuildPrefabInteractive

```haxe
function rebuildPrefabInteractive(prefab:Prefab):Void
```

Request that the prefab interactive should be re-created

### rebuildTree

```haxe
function rebuildTree(prefab:Prefab):Void
```

Request that the scene tree widget should be rebuild

### rebuildRenderProps

```haxe
function rebuildRenderProps():Void
```

Rebuilds the render props of the scene.

### rebuildTreeImpl

```haxe
function rebuildTreeImpl():Void
```

Implement this to support rebuilding the tree

### getScene3d

```haxe
function getScene3d():h3d.scene.Scene
```

Return the scene3d of the current editor

### getScene2d

```haxe
function getScene2d():h2d.Scene
```

Return the scene2d of the current editor

### getCameraController3d

```haxe
function getCameraController3d():hide.view.CameraControllerBase
```

Return the camera controller of the current editor

### openFile

```haxe
function openFile(path:String):Void
```

Open the given file path in the editor

### openPrefab

```haxe
function openPrefab(path:String, ?afterOpen:(ctx:SceneEditorAPI) -> Void):Void
```

Opens a prefab file in the editor.

### chooseFileSave

```haxe
function chooseFileSave(path:String, callback:(absPath:String) -> Void, ?allowNull:Bool = false):Void
```

Prompt the user to select a file, and then call callback with the chosen path.

### listMaterialLibraries

```haxe
function listMaterialLibraries(path:String):Array<{ path:String, name:String }>
```

Returns the material libraries available.

### listModelAnimations

```haxe
function listModelAnimations(path:String):Array<String>
```

Returns the animations of a model.

### quickError

```haxe
function quickError(message:String):Void
```

Displays an error message to the user

### screenToGround

```haxe
function screenToGround(sx:Float, sy:Float, ?paintOn:Prefab, ?ignoreTerrain:Bool = false):h3d.Vector
```

Returns the ground position under a screen position, or `null`.

### recordUndo

```haxe
function recordUndo(callback:(isUndo:Bool) -> Void, ?prefabs:Array<Prefab>):Void
```

Record an undo step. If called between beginMultiUndo/finishMultiUndo, the step is merged with the others in a single undo step.
`prefabs` lists the prefabs modified by the step. If null, the edited prefabs are assumed to be modified.

### quickTool

```haxe
function quickTool(onEnter:() -> Void, onQuit:() -> Void, update:(dt:Float) -> Void):hrt.prefab.editor.Tool
```

Create a Tool from three callbacks.
return the created Tool
Call enter() on the tool to start it
