# hrt.prefab.l3d.GenSDF

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Polygon` · source [`hrt/prefab/l3d/Polygon.hx`](../../../../../../hrt/prefab/l3d/Polygon.hx)

Extends: `hxsl.Shader`

Renders the signed distance field of a polygon (up to 256 points).

## Constructor

### new

```haxe
function new():Void
```

## Variables

### points

```haxe
var points(get, set):Array<hxsl.Vec4>
```

### len

```haxe
var len(get, set):Int
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
