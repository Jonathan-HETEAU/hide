# hrt.texgraph.TexNode

**class** · package [`hrt.texgraph`](README.md) · source [`hrt/texgraph/TexNode.hx`](../../../../../hrt/texgraph/TexNode.hx)

Implements: [`hide.view.IGraphNode`](../../hide/view/IGraphNode.md)

Subclasses: [`hrt.texgraph.nodes.Blur`](nodes/Blur.md), [`hrt.texgraph.nodes.BnWSpotsNoise`](nodes/BnWSpotsNoise.md), [`hrt.texgraph.nodes.Comment`](nodes/Comment.md), [`hrt.texgraph.nodes.Disc`](nodes/Disc.md), [`hrt.texgraph.nodes.Multiply`](nodes/Multiply.md), [`hrt.texgraph.nodes.RGBAMerge`](nodes/RGBAMerge.md), [`hrt.texgraph.nodes.RGBASplit`](nodes/RGBASplit.md), [`hrt.texgraph.nodes.TexOutput`](nodes/TexOutput.md), [`hrt.texgraph.nodes.WhiteNoise`](nodes/WhiteNoise.md)

A node of a texture graph. Subclasses are registered automatically, declare their `inputs` and `outputs` fields, and generate their textures in `apply`. The fields with `@prop` metadata are saved.

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### registeredNodes

```haxe
static var registeredNodes:Map<String, Class<TexNode>>
```

The node classes, by name.

## Static methods

### register

```haxe
static function register(key:String, cl:Class<TexNode>):Bool
```

Registers a node class.

### createFromDynamic

```haxe
static function createFromDynamic(data:Dynamic, graph:TexGraph):TexNode
```

Creates a node from its serialized data.

## Variables

### id

```haxe
var id:Int
```

The id in the graph.

### connections

```haxe
var connections:Array<Connection>
```

The connections of the inputs, by input id.

### defaults

```haxe
var defaults:Dynamic
```

The default values of the inputs, by name.

### editor _(editor (js) only)_

```haxe
var editor:hide.view.GraphEditor
```

The graph editor (editor only).

### x

```haxe
var x:Float
```

The X position in the editor.

### y

```haxe
var y:Float
```

The Y position in the editor.

### showPreview

```haxe
var showPreview:Bool
```

Shows the preview of the node in the editor.

### nameOverride

```haxe
var nameOverride:String
```

The displayed name, or `null` for the name of the class.

### overrides

```haxe
var overrides:{  }
```

### outputHeight

```haxe
var outputHeight:Int
```

The height of the output textures.

### outputWidth

```haxe
var outputWidth:Int
```

The width of the output textures.

### outputFormat

```haxe
var outputFormat:hxd.PixelFormat
```

The format of the output textures.

## Methods

### getInfo _(editor (js) only)_

```haxe
function getInfo():hide.view.GraphNodeInfo
```

Returns the display information of the node (editor only).

### getPos _(editor (js) only)_

```haxe
function getPos(p:h2d.col.Point):Void
```

Sets `p` to the position.

### setPos _(editor (js) only)_

```haxe
function setPos(p:h2d.col.Point):Void
```

Sets the position.

### getPropertiesHTML _(editor (js) only)_

```haxe
function getPropertiesHTML(width:Float):Array<hide.Element>
```

Returns the elements editing the properties of the node (editor only).

### serializeToDynamic

```haxe
function serializeToDynamic():Dynamic
```

Returns the serialized node.

### loadProperties

```haxe
function loadProperties(props:Dynamic):Void
```

Loads the saved properties.

### saveProperties

```haxe
function saveProperties():Dynamic
```

Returns the properties to save: the `@prop` fields and the default values.

### getInputs

```haxe
function getInputs():Array<Dynamic>
```

Returns the inputs: the `inputs` field.

### getOutputs

```haxe
function getOutputs():Array<Dynamic>
```

Returns the outputs: the `outputs` field.

### apply

```haxe
function apply(vars:Dynamic):Array<h3d.mat.Texture>
```

Returns the output textures, from the outputs of the other nodes (`vars`, by node id). Returns none by default.

### getInputData

```haxe
function getInputData(vars:Dynamic, inputIdx:Int):Dynamic
```

Returns the data connected to an input, or its default value.

### getSpecificParametersHTML _(editor (js) only)_

```haxe
function getSpecificParametersHTML():hide.Element
```

Returns the elements editing the node specific parameters, or `null` (editor only).
