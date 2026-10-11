# hide.view.NodeInput

**typedef** · package [`hide.view`](README.md) · module `hide.view.GraphInterface` · source [`hide_js/hide/view/GraphInterface.hx`](../../../../../hide_js/hide/view/GraphInterface.hx) · available on editor (js)

An input of a graph node.

## Fields

### tooltip

```haxe
var ?tooltip:Null<String>
```

The pin tooltip.

### shape

```haxe
var ?shape:Null<PinShape>
```

The pin shape.

### name

```haxe
var name:String
```

Display name of the node input

### defaultParam

```haxe
var ?defaultParam:Null<{ set:() -> Void, get:() -> String }>
```

If set, the input will have a input text box next to it when not connected

### color

```haxe
var ?color:Null<Int>
```

The pin color.
