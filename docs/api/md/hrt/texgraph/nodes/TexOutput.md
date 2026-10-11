# hrt.texgraph.nodes.TexOutput

**class** · package [`hrt.texgraph.nodes`](README.md) · source [`hrt/texgraph/nodes/TexOutput.hx`](../../../../../../hrt/texgraph/nodes/TexOutput.hx)

Extends: [`hrt.texgraph.TexNode`](../TexNode.md)

The texture graph node "Outputs" (Output): parameters outputs.
Inputs: `input`.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### label

```haxe
var label:String
```

The label of the output texture.

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
