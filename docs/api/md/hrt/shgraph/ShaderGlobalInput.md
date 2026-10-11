# hrt.shgraph.ShaderGlobalInput

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderGlobalInput.hx`](../../../../../hrt/shgraph/ShaderGlobalInput.hx)

Extends: [`hrt.shgraph.ShaderNode`](ShaderNode.md)

The shader graph node "Global" (Input): reads a global (time, pixel size, camera position, screen shader source).

## Constructor

### new

```haxe
function new(idx:Null<Int>):Void
```

Creates the node for the global at `idx`.

## Static variables

### globalInputs

```haxe
static var globalInputs:Array<{ g:Global, display:String }>
```

The available globals.

## Variables

### variableIdx

```haxe
var variableIdx:Int
```

The index of the global in `globalInputs`.

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

### getPropertiesHTML _(editor (js) only)_

```haxe
override function getPropertiesHTML(width:Float):Array<hide.Element>
```

## Inherited members

- from [`hrt.shgraph.ShaderNode`](ShaderNode.md): `id`, `x`, `y`, `showPreview`, `graph`, `nameOverride`, `resolvedInputTypes`, `resolvedOutputTypes`, `getResolvedInputType`, `getResolvedOutputType`, `getInfo`, `getId`, `getPos`, `setPos`, `getPropertiesHTML`, `editor`, `setDefaultParam`, `requestRecompile`, `serializeToDynamic`, `defaults`, `getInputs`, `getOutputs`, `generate`, `getAliases`, `connections`, `setId`, `loadProperties`, `shouldShowPreview`, `canHavePreview`, `saveProperties`, `getHTML`
