# hide.view.textureeditor.TextureEditor

**class** · package [`hide.view.textureeditor`](README.md) · source [`hide_js/hide/view/textureeditor/TextureEditor.hx`](../../../../../../hide_js/hide/view/textureeditor/TextureEditor.hx) · available on editor (js)

Extends: [`hide.view.FileView`](../FileView.md) → [`hide.ui.View`](../../ui/View.md) → [`hide.comp.Component`](../../comp/Component.md)

Implements: [`hide.view.IGraphEditor`](../IGraphEditor.md)

The texture graph editor view (`.texgraph` files): graph, parameters and preview of the generated textures.

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

## Static variables

### DEFAULT_PREVIEW_COLOR

```haxe
static var DEFAULT_PREVIEW_COLOR:Int
```

The color of the empty preview.

### DEFAULT_PREVIEW_SIZE

```haxe
static var DEFAULT_PREVIEW_SIZE:Int
```

The size of the preview, in pixels.

## Methods

### getDefaultContent

```haxe
override function getDefaultContent():Bytes
```

### save

```haxe
override function save():Void
```

### onPreviewSceneReady

```haxe
function onPreviewSceneReady():Void
```

Called when the preview scene is ready.

### onPreviewSceneUpdate

```haxe
function onPreviewSceneUpdate(dt:Float):Void
```

Updates the preview each frame.

### onPreviewUpdate

```haxe
function onPreviewUpdate():Bool
```

Generates the textures if requested, and updates the node previews. Returns true.

### onNodePreviewUpdate

```haxe
function onNodePreviewUpdate(node:hide.view.IGraphNode, bitmap:h2d.Bitmap):Void
```

Updates the preview of a node.

### onSelectionChanged

```haxe
function onSelectionChanged(selectedNodes:Array<hide.view.IGraphNode>):Void
```

Shows the parameters of the selected nodes, or of the graph without selection.

### getNodes

```haxe
function getNodes():Iterator<hide.view.IGraphNode>
```

Returns the nodes.

### getEdges

```haxe
function getEdges():Iterator<hide.view.Edge>
```

Returns the edges.

### getAddNodesMenu

```haxe
function getAddNodesMenu(currentEdge:Null<hide.view.Edge>):Array<hide.view.AddNodeMenuEntry>
```

Returns the add node menu entries.

### addNode

```haxe
function addNode(node:hide.view.IGraphNode):Void
```

Adds a node to the graph and generates the textures again.

### removeNode

```haxe
function removeNode(id:Int):Void
```

Removes a node from the graph and generates the textures again.

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

Returns null: the editor has no reroute nodes.

### canAddEdge

```haxe
function canAddEdge(edge:hide.view.Edge):Bool
```

Returns false if the edge can't be created because the input/output types don't match.

### addEdge

```haxe
function addEdge(edge:hide.view.Edge):Void
```

Adds an edge to the graph and generates the textures again.

### removeEdge

```haxe
function removeEdge(nodeToId:Int, inputToId:Int):Void
```

Removes the edge connected to an input and generates the textures again.

### getUndo

```haxe
function getUndo():hide.ui.UndoHistory
```

Returns the undo history.

### generate

```haxe
function generate():Void
```

Generates the textures on the next update.

### refreshPreview

```haxe
function refreshPreview():Void
```

Refreshes the preview on the next update.

## Inherited members

- from [`hide.view.FileView`](../FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
