# hide.view.IGraphEditor

**interface** · package [`hide.view`](README.md) · module `hide.view.GraphInterface` · source [`hide_js/hide/view/GraphInterface.hx`](../../../../../hide_js/hide/view/GraphInterface.hx) · available on editor (js)

Implemented by: [`hide.view.GenericGraphEditor`](GenericGraphEditor.md), [`hide.view.shadereditor.ShaderEditor`](shadereditor/ShaderEditor.md), [`hide.view.textureeditor.TextureEditor`](textureeditor/TextureEditor.md)

The graph data edited by a `GraphEditor`: nodes, edges, add menu, serialization and undo.

## Methods

### getNodes

```haxe
function getNodes():Iterator<IGraphNode>
```

Returns the nodes.

### getEdges

```haxe
function getEdges():Iterator<Edge>
```

Returns the edges.

### getAddNodesMenu

```haxe
function getAddNodesMenu(currentEdge:Null<Edge>):Array<AddNodeMenuEntry>
```

currentEdge is not null it there is a link being created.
You can use this information to filter the list of nodes in the
output entry based on compatible types

### addNode

```haxe
function addNode(node:IGraphNode):Void
```

Adds a node to the graph.

### removeNode

```haxe
function removeNode(id:Int):Void
```

Removes a node from the graph.

### serializeNode

```haxe
function serializeNode(node:IGraphNode):Dynamic
```

Returns the data of a node, for copy and undo.

### unserializeNode

```haxe
function unserializeNode(data:Dynamic, newId:Bool):IGraphNode
```

If newId is true, then the returned node must have a new unique id. This is used when duplicating nodes

### createCommentNode

```haxe
function createCommentNode():Null<IGraphNode>
```

Create a comment node. Return null if you don't have a comment node in your editor

### createRerouteNode

```haxe
function createRerouteNode(edge:Edge):Null<IGraphNode>
```

Create a reroute node that can be inserted in the middle of `edge`. Return null if you don't have reroute nodes in your editor

### canAddEdge

```haxe
function canAddEdge(edge:Edge):Bool
```

Returns false if the edge can't be created because the input/output types don't match

### addEdge

```haxe
function addEdge(edge:Edge):Void
```

Adds an edge to the graph.

### removeEdge

```haxe
function removeEdge(nodeToId:Int, inputToId:Int):Void
```

Removes the edge connected to an input.

### getUndo

```haxe
function getUndo():hide.ui.UndoHistory
```

Returns the undo history.
