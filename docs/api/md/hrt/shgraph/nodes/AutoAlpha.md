# hrt.shgraph.nodes.AutoAlpha

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/AutoAlpha.hx`](../../../../../../hrt/shgraph/nodes/AutoAlpha.hx)

Extends: [`hrt.shgraph.Operation`](../Operation.md) → [`hrt.shgraph.ShaderNodeHxsl`](../ShaderNodeHxsl.md) → [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Auto Alpha" (Channel): set the alpha of the given vector to max(rgb) * scale.
Inputs: `rgb` (default `0.0`), `scale` (default `1.0`).
Outputs: `rgba`.

## Constructor

### new

```haxe
function new():Void
```

## Static variables

### _variablesInfos

```haxe
static var _variablesInfos:Map<Int, hrt.shgraph.SgHxslVar>
```

## Inherited members

- from [`hrt.shgraph.ShaderNodeHxsl`](../ShaderNodeHxsl.md): `getInputs`, `getOutputs`, `generate`
- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
