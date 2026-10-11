# hide.view.shadereditor.Box

**class** · package [`hide.view.shadereditor`](README.md) · source [`hide_js/hide/view/shadereditor/Box.hx`](../../../../../../hide_js/hide/view/shadereditor/Box.hx) · available on editor (js)

The SVG box of a node in the `GraphEditor`: header, pins, properties and preview.

## Constructor

### new

```haxe
function new(editor:hide.view.GraphEditor, parent:js.jquery.JQuery, node:hide.view.IGraphNode):Void
```

Creates the box of a node.

## Static variables

### NODE_MARGIN

```haxe
static final NODE_MARGIN:Int
```

The vertical space between two pins.

### NODE_RADIUS

```haxe
static var NODE_RADIUS:Int
```

The radius of the pins.

### NODE_HITBOX_RADIUS

```haxe
static var NODE_HITBOX_RADIUS:Int
```

The radius of the pin hit boxes.

### tmpPoint

```haxe
static var tmpPoint:h2d.col.Point
```

A temporary point.

## Static methods

### getTypeColor

```haxe
static function getTypeColor(type:hrt.shgraph.SgType):String
```

Returns the pin color of a shader graph type.

## Variables

### HEADER_HEIGHT

```haxe
var HEADER_HEIGHT:Int
```

The header height (34 with a preview, 0 without header).

### selected

```haxe
var selected:Bool
```

True if the node is selected.

### inputs

```haxe
var inputs:Array<js.jquery.JQuery>
```

The input pin elements.

### outputs

```haxe
var outputs:Array<js.jquery.JQuery>
```

The output pin elements.

## Methods

### refreshPreviewButton

```haxe
function refreshPreviewButton():Void
```

Refreshes the state of the preview button.

### setPreviewVisibility

```haxe
function setPreviewVisibility(visible:Bool):Void
```

Shows or hides the node preview.

### genPinShape

```haxe
function genPinShape(editor:hide.view.GraphEditor, parent:hide.Element, height:Float, shape:hide.view.PinShape, isOutput:Bool):hide.Element
```

Creates the shape of a pin.

### addInput

```haxe
function addInput(editor:hide.view.GraphEditor, name:String, ?valueDefault:String, shape:hide.view.PinShape):js.jquery.JQuery
```

Adds an input pin, with a default value field if `valueDefault` is set.

### addOutput

```haxe
function addOutput(editor:hide.view.GraphEditor, name:String, shape:hide.view.PinShape):js.jquery.JQuery
```

Adds an output pin.

### refreshPinColors

```haxe
function refreshPinColors(?force:Bool = false):Void
```

Update the pins colors from the node current info, without rebuilding the box

### getNodeHeight

```haxe
function getNodeHeight(id:Int):Int
```

Returns the vertical position of the pin of an index.

### generateProperties

```haxe
function generateProperties(editor:hide.view.GraphEditor):Void
```

Adds the node properties to the box.

### dispose

```haxe
function dispose():Void
```

Removes the box.

### setPosition

```haxe
function setPosition(x:Float, y:Float):Void
```

Moves the box.

### setSelected

```haxe
function setSelected(b:Bool):Void
```

Selects or unselects the box.

### setTitle

```haxe
function setTitle(str:String):Void
```

Sets the title of the header.

### getInstance

```haxe
function getInstance():hide.view.IGraphNode
```

Returns the node.

### collapseProperties

```haxe
function collapseProperties():Bool
```

Tells if the properties are shown next to the pins (at most one input and one output).

### getNodesHeight

```haxe
function getNodesHeight():Int
```

Returns the height of the pins.

### getHeight

```haxe
function getHeight():Float
```

Returns the height of the box.

### getBounds

```haxe
inline function getBounds():{ y:Float, x:Float, w:Float, h:Float }
```

Returns the position and size of the box.

### getElement

```haxe
function getElement():js.jquery.JQuery
```

Returns the box element.
