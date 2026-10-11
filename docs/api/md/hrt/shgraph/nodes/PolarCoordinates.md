# hrt.shgraph.nodes.PolarCoordinates

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/PolarCoordinates.hx`](../../../../../../hrt/shgraph/nodes/PolarCoordinates.hx)

Extends: [`hrt.shgraph.Operation`](../Operation.md) → [`hrt.shgraph.ShaderNodeHxsl`](../ShaderNodeHxsl.md) → [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Polar Coordinates" (UV): convert UV in carthesian coordinates to polar coordinates UV. output X is the distance from the center and output Y is the angle in radient around that point.
Inputs: `uv` (default `calculatedUV`), `center` (default `0.5`), `radialScale` (default `1.0`), `lengthScale` (default `1.0`).
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
