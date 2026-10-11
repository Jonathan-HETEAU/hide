# hide.prefab.terrain.AlphaMult

**class** · package [`hide.prefab.terrain`](README.md) · module `hide.prefab.terrain.Brush` · source [`hide_js/hide/prefab/terrain/Brush.hx`](../../../../../../hide_js/hide/prefab/terrain/Brush.hx) · available on editor (js)

Extends: `hxsl.Shader`

Multiplies the alpha by `amount`.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### amount

```haxe
var amount(get, set):Float
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
