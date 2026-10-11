# hrt.shgraph.nodes.Comment

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/Comment.hx`](../../../../../../hrt/shgraph/nodes/Comment.hx)

Extends: [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Comment" (Comment): a box that allows you to comment your graph.

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

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

### canHavePreview

```haxe
override function canHavePreview():Bool
```

### getInfo _(editor (js) only)_

```haxe
override function getInfo():hide.view.GraphNodeInfo
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
