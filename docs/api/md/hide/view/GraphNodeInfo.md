# hide.view.GraphNodeInfo

**typedef** · package [`hide.view`](README.md) · module `hide.view.GraphInterface` · source [`hide_js/hide/view/GraphInterface.hx`](../../../../../hide_js/hide/view/GraphInterface.hx) · available on editor (js)

The description of a node shown by the `GraphEditor`.

## Fields

### width

```haxe
var ?width:Null<Int>
```

The node width in pixels (150 by default).

### preview

```haxe
var ?preview:Null<{ setVisible:() -> Void, getVisible:() -> Bool, fullSize:Bool }>
```

If set, the node can show a preview pannel

### playButton

```haxe
var ?playButton:Null<{ onClick:() -> Void, getActive:() -> Bool }>
```

Adds a button to the header that can be used to set the current preview point in the graph

### outputs

```haxe
var outputs:Array<NodeOutput>
```

The node outputs.

### noHeader

```haxe
var ?noHeader:Null<Bool>
```

Hides the node header.

### name

```haxe
var name:String
```

The entry name.

### inputs

```haxe
var inputs:Array<NodeInput>
```

The node inputs.

### headerColor

```haxe
var ?headerColor:Null<Int>
```

The header color.

### dontAddRemove

```haxe
var ?dontAddRemove:Null<Bool>
```

If true, this node cannot be added, removed, or cloned. It must be created externaly. Used for things like fixed inputs or ouputs

### contextMenu

```haxe
var ?contextMenu:Null<(e:js.html.MouseEvent) -> Void>
```

If set, a custom context menu will be created when the user right clicks the box

### comment

```haxe
var ?comment:Null<{ setSize:(s:h2d.col.Point) -> Void, setComment:() -> Void, getSize:(s:h2d.col.Point) -> Void, getComment:() -> String }>
```

If set, the node will be treated as a comment
