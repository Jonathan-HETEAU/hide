# hrt.texgraph.nodes.Multiply

**class** · package [`hrt.texgraph.nodes`](README.md) · source [`hrt/texgraph/nodes/Multiply.hx`](../../../../../../hrt/texgraph/nodes/Multiply.hx)

Extends: [`hrt.texgraph.TexNode`](../TexNode.md)

The texture graph node "Multiply" (Math): the output is the result of the inputs multiplied.
Inputs: `input1`, `input2`.
Outputs: `output`.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### apply

```haxe
override function apply(vars:Dynamic):Array<h3d.mat.Texture>
```

## Inherited members

- from [`hrt.texgraph.TexNode`](../TexNode.md): `id`, `connections`, `defaults`, `editor`, `x`, `y`, `showPreview`, `nameOverride`, `overrides`, `outputHeight`, `outputWidth`, `outputFormat`, `getInfo`, `getPos`, `setPos`, `getPropertiesHTML`, `serializeToDynamic`, `loadProperties`, `saveProperties`, `getInputs`, `getOutputs`, `apply`, `getInputData`, `getSpecificParametersHTML`
