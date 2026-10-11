# hrt.shgraph.ShaderInput

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderInput.hx`](../../../../../hrt/shgraph/ShaderInput.hx)

Extends: [`hrt.shgraph.ShaderNode`](ShaderNode.md)

The shader graph node "Inputs" (Input): reads a shader input of Heaps (see `availableInputs`).

## Constructor

### new

```haxe
function new(?variable:String = "pixelColor"):Void
```

Creates the node for an input.

## Static variables

### availableInputs

```haxe
static var availableInputs:Map<String, { k:InputKind, display:String }>
```

The available inputs, by key.

## Variables

### variable

```haxe
var variable:String
```

The key of the input in `availableInputs`.

## Methods

### getOutputs

```haxe
override function getOutputs():Array<OutputInfo>
```

### generate

```haxe
override function generate(ctx:NodeGenContext):Void
```

### getAliases

```haxe
override function getAliases(name:String, group:String, description:String):Array<AliasInfo>
```

### loadProperties

```haxe
override function loadProperties(props:Dynamic):Void
```

### getPropertiesHTML _(editor (js) only)_

```haxe
override function getPropertiesHTML(width:Float):Array<hide.Element>
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
