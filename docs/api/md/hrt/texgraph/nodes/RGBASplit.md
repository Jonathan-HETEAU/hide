# hrt.texgraph.nodes.RGBASplit

**class** · package [`hrt.texgraph.nodes`](README.md) · source [`hrt/texgraph/nodes/RGBASplit.hx`](../../../../../../hrt/texgraph/nodes/RGBASplit.hx)

Extends: [`hrt.texgraph.TexNode`](../TexNode.md)

The texture graph node "RGBA Split" (Channel): separates a RGBA image into 4 grayscale images.
Inputs: `RGBA`.
Outputs: `R`, `G`, `B`, `A`.

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
