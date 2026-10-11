# hrt.shgraph.nodes.Cross

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/Cross.hx`](../../../../../../hrt/shgraph/nodes/Cross.hx)

Extends: [`hrt.shgraph.ShaderNodeHxsl`](../ShaderNodeHxsl.md) → [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Cross" (Math): the output is the cross product of a and b.
Inputs: `a`, `b`.
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
