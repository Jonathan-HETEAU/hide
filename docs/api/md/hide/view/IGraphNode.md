# hide.view.IGraphNode

**interface** · package [`hide.view`](README.md) · module `hide.view.GraphInterface` · source [`hide_js/hide/view/GraphInterface.hx`](../../../../../hide_js/hide/view/GraphInterface.hx) · available on editor (js)

Implemented by: [`hrt.animgraph.Node`](../../hrt/animgraph/Node.md), [`hrt.shgraph.ShaderNode`](../../hrt/shgraph/ShaderNode.md), [`hrt.texgraph.TexNode`](../../hrt/texgraph/TexNode.md)

A node edited by the `GraphEditor`.

## Variables

### id

```haxe
var id:Int
```

Unique identifier for this node. The ID of a given node MUST NERVER change for the entire lifetime of the GraphEditor

### x

```haxe
var x:Float
```

The X position in the graph.

### y

```haxe
var y:Float
```

The Y position in the graph.

### editor

```haxe
var editor:GraphEditor
```

The graph editor showing the node, set by the editor.

## Methods

### getInfo

```haxe
function getInfo():GraphNodeInfo
```

Returns the description of the node.

### getPos

```haxe
function getPos(p:h2d.col.Point):Void
```

Writes the node position into `p`.

### setPos

```haxe
function setPos(p:h2d.col.Point):Void
```

Sets the node position.

### getPropertiesHTML

```haxe
function getPropertiesHTML(width:Float):Array<hide.Element>
```

Returns the elements of the node properties, shown in the node.
