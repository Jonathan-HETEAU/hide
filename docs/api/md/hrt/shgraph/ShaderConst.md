# hrt.shgraph.ShaderConst

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderConst.hx`](../../../../../hrt/shgraph/ShaderConst.hx)

Extends: [`hrt.shgraph.ShaderNode`](ShaderNode.md)

Subclasses: [`hrt.shgraph.nodes.BoolConst`](nodes/BoolConst.md), [`hrt.shgraph.nodes.Color`](nodes/Color.md), [`hrt.shgraph.nodes.FloatConst`](nodes/FloatConst.md)

A node with a constant name (no output).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### name

```haxe
var name:String
```

The name.

## Methods

### generate

```haxe
override function generate(ctx:NodeGenContext):Void
```

### getPropertiesHTML _(editor (js) only)_

```haxe
override function getPropertiesHTML(width:Float):Array<hide.Element>
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
