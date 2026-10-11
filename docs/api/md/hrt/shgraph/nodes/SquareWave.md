# hrt.shgraph.nodes.SquareWave

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/SquareWave.hx`](../../../../../../hrt/shgraph/nodes/SquareWave.hx)

Extends: [`hrt.shgraph.ShaderNodeHxsl`](../ShaderNodeHxsl.md) → [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Square Wave" (Math): a square wave of period 1 oscilating between -1 and 1.
Inputs: `a` (default `0.0`).
Outputs: `output`.

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
