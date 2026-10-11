# hrt.texgraph.nodes.Comment

**class** · package [`hrt.texgraph.nodes`](README.md) · source [`hrt/texgraph/nodes/Comment.hx`](../../../../../../hrt/texgraph/nodes/Comment.hx)

Extends: [`hrt.texgraph.TexNode`](../TexNode.md)

The texture graph node "Comment" (Comment): a box that allows you to comment your graph.

## Constructor

### new

```haxe
function new():Void
```

Creates the node.

## Variables

### comment

```haxe
var comment:String
```

The text.

### width

```haxe
var width:Float
```

The width of the box.

### height

```haxe
var height:Float
```

The height of the box.

## Methods

### apply

```haxe
override function apply(vars:Dynamic):Array<h3d.mat.Texture>
```

### getInfo _(editor (js) only)_

```haxe
override function getInfo():hide.view.GraphNodeInfo
```

## Inherited members

- from [`hrt.texgraph.TexNode`](../TexNode.md): `id`, `connections`, `defaults`, `editor`, `x`, `y`, `showPreview`, `nameOverride`, `overrides`, `outputHeight`, `outputWidth`, `outputFormat`, `getInfo`, `getPos`, `setPos`, `getPropertiesHTML`, `serializeToDynamic`, `loadProperties`, `saveProperties`, `getInputs`, `getOutputs`, `apply`, `getInputData`, `getSpecificParametersHTML`
