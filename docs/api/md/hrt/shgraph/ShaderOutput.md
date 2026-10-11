# hrt.shgraph.ShaderOutput

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderOutput.hx`](../../../../../hrt/shgraph/ShaderOutput.hx)

Extends: [`hrt.shgraph.ShaderNode`](ShaderNode.md)

The shader graph node "Outputs" (Output): writes a shader output (see `availableOutputs`).

## Constructor

### new

```haxe
function new(?variable:String = "_sg_out_color"):Void
```

Creates the node for an output.

## Static variables

### availableOutputs

```haxe
static var availableOutputs:Map<String, { g:Global, display:String }>
```

The available outputs, by key.

## Variables

### variable

```haxe
var variable:String
```

The key of the output in `availableOutputs`.

### generatePreview

```haxe
var generatePreview:Bool
```

Generates the preview.

## Methods

### getInputs

```haxe
override function getInputs():Array<InputInfo>
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
