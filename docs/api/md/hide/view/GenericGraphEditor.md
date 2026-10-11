# hide.view.GenericGraphEditor

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/GenericGraphEditor.hx`](../../../../../hide_js/hide/view/GenericGraphEditor.hx) · available on editor (js)

Extends: [`hide.view.FileView`](FileView.md) → [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

Implements: [`hide.view.IGraphEditor`](IGraphEditor.md)

Subclasses: [`hide.view.animgraph.AnimGraphEditor`](animgraph/AnimGraphEditor.md)

A base file view for the graph editors, holding a `GraphEditor`. The `IGraphEditor` methods must be overridden.

## Constructor

### new

```haxe
function new(state:{ path:String }):Void
```

## Methods

### getNodes

```haxe
function getNodes():Iterator<IGraphNode>
```

Returns the nodes. Throws: to override.

### getEdges

```haxe
function getEdges():Iterator<Edge>
```

Returns the edges. Throws: to override.

### getAddNodesMenu

```haxe
function getAddNodesMenu(currentEdge:Null<Edge>):Array<AddNodeMenuEntry>
```

Returns the add node menu entries. Throws: to override.

### addNode

```haxe
function addNode(node:IGraphNode):Void
```

Adds a node to the graph. Throws: to override.

### removeNode

```haxe
function removeNode(id:Int):Void
```

Removes a node from the graph. Throws: to override.

### serializeNode

```haxe
function serializeNode(node:IGraphNode):Dynamic
```

Returns the data of a node, for copy and undo. Throws: to override.

### unserializeNode

```haxe
function unserializeNode(data:Dynamic, newId:Bool):IGraphNode
```

Creates a node from its data, with a new unique id if `newId`. Throws: to override.

### createCommentNode

```haxe
function createCommentNode():Null<IGraphNode>
```

Creates a comment node. Throws: to override.

### createRerouteNode

```haxe
function createRerouteNode(edge:Edge):Null<IGraphNode>
```

Returns null: the editor has no reroute nodes.

### canAddEdge

```haxe
function canAddEdge(edge:Edge):Bool
```

Returns false if the edge can't be created because the input/output types don't match. Throws: to override.

### addEdge

```haxe
function addEdge(edge:Edge):Void
```

Adds an edge to the graph. Throws: to override.

### removeEdge

```haxe
function removeEdge(nodeToId:Int, inputToId:Int):Void
```

Removes the edge connected to an input. Throws: to override.

### getUndo

```haxe
function getUndo():hide.ui.UndoHistory
```

Returns the undo history.

## Inherited members

- from [`hide.view.FileView`](FileView.md): `extension`, `modified`, `getDefaultContent`, `setContainer`, `canSave`, `save`, `saveAs`, `onBeforeClose`, `getTitle`
- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
