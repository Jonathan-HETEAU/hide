# hrt.shgraph.nodes.NormalMap

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/NormalMap.hx`](../../../../../../hrt/shgraph/nodes/NormalMap.hx)

Extends: [`hrt.shgraph.nodes.Sampler`](Sampler.md) → [`hrt.shgraph.ShaderNodeHxsl`](../ShaderNodeHxsl.md) → [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Normal map" (Math): returns normal in world space using a normal map.
Inputs: `texture`, `uv` (default `calculatedUV`).
Outputs: `normalWS`.

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

- from [`hrt.shgraph.nodes.Sampler`](Sampler.md): `getPropertiesHTML`
- from [`hrt.shgraph.ShaderNodeHxsl`](../ShaderNodeHxsl.md): `getInputs`, `getOutputs`, `generate`
- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
