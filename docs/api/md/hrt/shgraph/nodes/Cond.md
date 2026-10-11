# hrt.shgraph.nodes.Cond

**class** · package [`hrt.shgraph.nodes`](README.md) · source [`hrt/shgraph/nodes/Cond.hx`](../../../../../../hrt/shgraph/nodes/Cond.hx)

Extends: [`hrt.shgraph.ShaderNode`](../ShaderNode.md)

The shader graph node "Condition" (Condition): create a custom condition between two inputs.

## Constructor

### new

```haxe
function new():Void
```

## Methods

### getOutputs

```haxe
override function getOutputs():Array<hrt.shgraph.OutputInfo>
```

### getInputs

```haxe
override function getInputs():Array<hrt.shgraph.InputInfo>
```

### generate

```haxe
override function generate(ctx:hrt.shgraph.NodeGenContext):Void
```

### loadProperties

```haxe
override function loadProperties(props:Dynamic):Void
```

### saveProperties

```haxe
override function saveProperties():Dynamic
```

### getPropertiesHTML _(editor (js) only)_

```haxe
override function getPropertiesHTML(width:Float):Array<hide.Element>
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](../ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
