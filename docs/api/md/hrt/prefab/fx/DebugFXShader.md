# hrt.prefab.fx.DebugFXShader

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.FX` · source [`hrt/prefab/fx/FX.hx`](../../../../../../hrt/prefab/fx/FX.hx)

Extends: `hxsl.Shader`

Draws the FX in a flat color (HSV) for the debug display.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### color

```haxe
var color(get, set):hxsl.Vec4
```

### reverseDepth

```haxe
var reverseDepth(get, set):Bool
```

## Methods

### updateConstants

```haxe
override function updateConstants(globals:hxsl.Globals):Void
```

### getParamValue

```haxe
override function getParamValue(index:Int):Dynamic
```

### getParamFloatValue

```haxe
override function getParamFloatValue(index:Int):Float
```

### setParamIndexValue

```haxe
override function setParamIndexValue(index:Int, val:Dynamic):Void
```

### setParamIndexFloatValue

```haxe
override function setParamIndexFloatValue(index:Int, val:Float):Void
```

### writeParam

```haxe
override function writeParam(index:Int, type:hxsl.Type, out:hxsl.ShaderParamBuffer, pos:Int):Void
```

### clone

```haxe
override function clone():hxsl.Shader
```
