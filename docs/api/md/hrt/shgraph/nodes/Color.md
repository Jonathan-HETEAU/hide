# hrt.shgraph.nodes.Color

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/Color.hx`](../../../../../../hrt/shgraph/nodes/Color.hx)

Extends: [`hrt.shgraph.ShaderConst`](../ShaderConst.md) → [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Const Color" (Property): color property (static).

## Constructor

### new

```haxe
function new():Void
```

## Methods

### getOutputs

```haxe
override function getOutputs():Array<hrt.shgraph.OutputInfo>
```

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

### getPropertiesHTML _(editor (js) only)_

```haxe
override function getPropertiesHTML(width:Float):Array<hide.Element>
```

## Inherited members

- from [`hrt.shgraph.ShaderConst`](../ShaderConst.md): `name`, `generate`, `getPropertiesHTML`
- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
