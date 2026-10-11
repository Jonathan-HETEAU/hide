# hrt.shgraph.nodes.Preview

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/Preview.hx`](../../../../../../hrt/shgraph/nodes/Preview.hx)

Extends: [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Preview" (Output): displays its input, to debug.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### previewID

```haxe
var previewID:Int
```

The id of the preview.

## Methods

### getInputs

```haxe
override function getInputs():Array<hrt.shgraph.InputInfo>
```

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
