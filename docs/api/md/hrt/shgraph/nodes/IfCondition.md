# hrt.shgraph.nodes.IfCondition

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/IfCondition.hx`](../../../../../../hrt/shgraph/nodes/IfCondition.hx)

Extends: [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "If" (Condition): return the correct input according to the condition.

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

### getInputs

```haxe
override function getInputs():Array<hrt.shgraph.InputInfo>
```

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
