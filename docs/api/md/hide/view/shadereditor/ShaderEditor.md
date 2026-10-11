# hide.view.shadereditor.ShaderEditor

**class** · package [`hide.view.shadereditor`](README.md) · source [`hide_js/hide/view/shadereditor/ShaderEditor.hx`](../../../../../../hide_js/hide/view/shadereditor/ShaderEditor.hx) · available on editor (js)

Extends: [`hide.view.FileView`](../FileView.md) → [`hide.ui.View`](../../ui/View.md) → [`hide.comp.Component`](../../comp/Component.md)

Implements: [`hide.view.IGraphEditor`](../IGraphEditor.md)

The shader graph editor view (`.shgraph` files): graph, parameters, variables and mesh preview.

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

## Methods

### onActivate

```haxe
override function onActivate():Void
```

### onBeforeClose

```haxe
override function onBeforeClose():Bool
```

### loadSettings

```haxe
function loadSettings():Void
```

Loads the preview settings from the display state.

### savePreviewSettings

```haxe
function savePreviewSettings():Void
```

Saves the preview settings in the display state.

### revealParameter

```haxe
function revealParameter(id:Int):Void
```

Shows a parameter in the parameters list.

### revealVariable

```haxe
function revealVariable(id:Int):Void
```

Shows a variable in the variables list.

### disposeMeshPreview

```haxe
function disposeMeshPreview():Void
```

Removes the mesh preview.

### initMeshPreview

```haxe
function initMeshPreview():Void
```

Creates the mesh preview.

### setPreviewScreenFXUsePrevTarget

```haxe
function setPreviewScreenFXUsePrevTarget(value:Bool):Void
```

Sets `screenFXusePrevTarget` and applies it to the preview.

### setPrefabAndRenderDelayed

```haxe
function setPrefabAndRenderDelayed(prefab:String, renderProps:String):Void
```

Sets the previewed mesh and render props in the settings, used when the preview is created.

### clearRenderProps

```haxe
function clearRenderProps():Void
```

Removes the render props of the preview.

### selectRenderProps

```haxe
function selectRenderProps():Void
```

Opens a file chooser for the render props of the preview.

### openBackgroundColorMenu

```haxe
function openBackgroundColorMenu():Void
```

Opens a color picker for the preview background.

### onMeshPreviewUpdate

```haxe
function onMeshPreviewUpdate(dt:Float):Void
```

Updates the mesh preview each frame, compiling the shader if needed.

### refreshRenderProps

```haxe
function refreshRenderProps():Void
```

Applies the render props to the preview.

### dispose

```haxe
function dispose():Void
```

Disposes the preview.

### cleanupPreview

```haxe
function cleanupPreview():Void
```

Removes the previewed objects.

### setMeshPreviewMesh

```haxe
function setMeshPreviewMesh(mesh:h3d.scene.Mesh):Void
```

Previews a mesh.

### setMeshPreviewSphere

```haxe
function setMeshPreviewSphere():Void
```

Previews a sphere.

### setMeshPreviewPlane

```haxe
function setMeshPreviewPlane():Void
```

Previews a plane.

### setMeshPreviewScreenFX

```haxe
function setMeshPreviewScreenFX():Void
```

Previews the graph as a screen shader.

### chooseMeshPreviewFBX

```haxe
function chooseMeshPreviewFBX():Void
```

Opens a file chooser for an FBX to preview.

### chooseMeshPreviewPrefab

```haxe
function chooseMeshPreviewPrefab():Void
```

Opens a file chooser for a prefab or FX to preview.

### resetPreviewCamera

```haxe
function resetPreviewCamera():Void
```

Frames the previewed object.

### resetPreviewSize

```haxe
function resetPreviewSize():Void
```

Restores the default preview size.

### loadMeshPreviewFromString

```haxe
function loadMeshPreviewFromString(str:String):Void
```

Previews `Sphere`, `Plane`, `ScreenFX`, or the FBX or prefab at a path.

### setMeshPreviewFBX

```haxe
function setMeshPreviewFBX(str:String):Void
```

Previews the first mesh of an FBX. Falls back to a sphere on error.

### setMeshPreviewPrefab

```haxe
function setMeshPreviewPrefab(str:String):Void
```

Previews a prefab. Falls back to a sphere on error.

### onMeshPreviewReady

```haxe
function onMeshPreviewReady():Void
```

Called when the preview scene is ready: creates the camera and loads the previewed object.

### replaceMeshShader

```haxe
function replaceMeshShader(mesh:h3d.scene.Mesh, newShader:hxsl.DynamicShader):Void
```

Replaces the shader graph shader on the materials of a mesh.

### onPreviewUpdate

```haxe
function onPreviewUpdate():Bool
```

Updates the node previews each frame.

### onNodePreviewUpdate

```haxe
function onNodePreviewUpdate(node:hide.view.IGraphNode, bitmap:h2d.Bitmap):Void
```

Updates the preview of a node.

### getNodes

```haxe
function getNodes():Iterator<hide.view.IGraphNode>
```

IGraphEditor interface

### getEdges

```haxe
function getEdges():Iterator<hide.view.Edge>
```

Returns the edges.

### serializeNode

```haxe
function serializeNode(node:hide.view.IGraphNode):Dynamic
```

Returns the data of a node, for copy and undo.

### unserializeNode

```haxe
function unserializeNode(data:Dynamic, newId:Bool):hide.view.IGraphNode
```

Creates a node from its data, with a new unique id if `newId`.

### createCommentNode

```haxe
function createCommentNode():Null<hide.view.IGraphNode>
```

Creates a comment node.

### createRerouteNode

```haxe
function createRerouteNode(edge:hide.view.Edge):Null<hide.view.IGraphNode>
```

Creates a reroute node of the type of `edge`. Returns null if the type is unknown.

### getAddNodesMenu

```haxe
function getAddNodesMenu(currentEdge:Null<hide.view.Edge>):Array<hide.view.AddNodeMenuEntry>
```

Returns the add node menu entries, compatible with `currentEdge` if set.

### addNode

```haxe
function addNode(node:hide.view.IGraphNode):Void
```

Adds a node to the graph.

### removeNode

```haxe
function removeNode(id:Int):Void
```

Removes a node from the graph.

### canAddEdge

```haxe
function canAddEdge(edge:hide.view.Edge):Bool
```

Returns false if the edge can't be created because the input/output types don't match.

### addEdge

```haxe
function addEdge(edge:hide.view.Edge):Void
```

Adds an edge to the graph.

### removeEdge

```haxe
function removeEdge(nodeToId:Int, inputToId:Int):Void
```

Removes the edge connected to an input.

### save

```haxe
override function save():Void
```

### getUndo

```haxe
function getUndo():hide.ui.UndoHistory
```

Returns the undo history.

### getDefaultContent

```haxe
override function getDefaultContent():Bytes
```

### requestRecompile

```haxe
function requestRecompile():Void
```

Marks the shader to compile again.

### checkCompileShader

```haxe
function checkCompileShader():Void
```

Compiles the shader if the graph changed.

## Inherited members

- from [`hide.view.FileView`](../FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
