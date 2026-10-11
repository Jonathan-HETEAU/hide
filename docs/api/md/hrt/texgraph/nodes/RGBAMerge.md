# hrt.texgraph.nodes.RGBAMerge

**class** · package [`hrt.texgraph.nodes`](README.md) · source [`hrt/texgraph/nodes/RGBAMerge.hx`](../../../../../../hrt/texgraph/nodes/RGBAMerge.hx)

Extends: [`hrt.texgraph.TexNode`](../TexNode.md)

The texture graph node "RGBA Merge" (Channel): merges 4 grayscale images into a RGBA image.
Inputs: `R`, `G`, `B`, `A`.
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
