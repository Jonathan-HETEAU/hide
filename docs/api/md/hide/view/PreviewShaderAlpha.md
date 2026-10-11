# hide.view.PreviewShaderAlpha

**class** · package [`hide.view`](README.md) · module `hide.view.GraphEditor` · source [`hide_js/hide/view/GraphEditor.hx`](../../../../../hide_js/hide/view/GraphEditor.hx) · available on editor (js)

Extends: `hxsl.Shader`

Shows the alpha of a preview by blending its color over a checkerboard.

## Constructor

### new

```haxe
function new():Void
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
