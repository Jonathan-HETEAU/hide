# hrt.texgraph.nodes.BnWSpotsNoise

**class** · package [`hrt.texgraph.nodes`](README.md) · module `hrt.texgraph.nodes.BnWNoise` · source [`hrt/texgraph/nodes/BnWNoise.hx`](../../../../../../hrt/texgraph/nodes/BnWNoise.hx)

Extends: [`hrt.texgraph.TexNode`](../TexNode.md)

The texture graph node "BnW Spots Noise" (Texture generation): black and white spots noise texture.
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

### getSpecificParametersHTML _(editor (js) only)_

```haxe
override function getSpecificParametersHTML():js.jquery.JQuery
```

## Inherited members

- from [`hrt.texgraph.TexNode`](../TexNode.md): `id`, `connections`, `defaults`, `editor`, `x`, `y`, `showPreview`, `nameOverride`, `overrides`, `outputHeight`, `outputWidth`, `outputFormat`, `getInfo`, `getPos`, `setPos`, `getPropertiesHTML`, `serializeToDynamic`, `loadProperties`, `saveProperties`, `getInputs`, `getOutputs`, `apply`, `getInputData`, `getSpecificParametersHTML`
