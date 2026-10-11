# hrt.shgraph.nodes.Text

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/Text.hx`](../../../../../../hrt/shgraph/nodes/Text.hx)

Extends: [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Text" (Other): only UI, to add text.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

### getPropertiesHTML _(editor (js) only)_

```haxe
override function getPropertiesHTML(width:Float):Array<hide.Element>
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
