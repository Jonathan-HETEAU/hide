# hide.view.AddNodeMenuEntry

**typedef** · package [`hide.view`](README.md) · module `hide.view.GraphInterface` · source [`hide_js/hide/view/GraphInterface.hx`](../../../../../hide_js/hide/view/GraphInterface.hx) · available on editor (js)

An entry of the add node menu.

## Fields

### onConstructNode

```haxe
var onConstructNode:() -> IGraphNode
```

This function will be called when the user chooses to add a node from the add node menu
You should generate a unique ID for the new IGraphNode. Don't add the node to your graph datastructure yet,
the Graph editor will call addNode() with this node at the right time.

### name

```haxe
var name:String
```

Display name of the node output.

### group

```haxe
var group:String
```

The group of the entry.

### description

```haxe
var description:String
```

The entry description.
