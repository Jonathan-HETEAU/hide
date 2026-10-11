# hrt.shgraph.ShaderParam

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderParam.hx`](../../../../../hrt/shgraph/ShaderParam.hx)

Extends: [`hrt.shgraph.ShaderNode`](ShaderNode.md)

The shader graph node "Parameter": reads a parameter of the graph.

## Constructor

### new

```haxe
function new():Void
```

Creates the node.

## Variables

### parameterId

```haxe
var parameterId:Int
```

The id of the parameter.

### perInstance

```haxe
var perInstance:Bool
```

Makes the parameter per instance.

## Methods

### getOutputs

```haxe
override function getOutputs():Array<OutputInfo>
```

### generate

```haxe
override function generate(ctx:NodeGenContext):Void
```

### loadProperties

```haxe
override function loadProperties(props:Dynamic):Void
```

### saveProperties

```haxe
override function saveProperties():Dynamic
```

### getInfo _(editor (js) only)_

```haxe
override function getInfo():hide.view.GraphNodeInfo
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
