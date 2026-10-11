# hide.view.shadereditor.PreviewShaderBase

**class** · package [`hide.view.shadereditor`](README.md) · module `hide.view.shadereditor.ShaderEditor` · source [`hide_js/hide/view/shadereditor/ShaderEditor.hx`](../../../../../../hide_js/hide/view/shadereditor/ShaderEditor.hx) · available on editor (js)

Extends: `hxsl.Shader`

The base shader of the node previews: sets default values for the variables the nodes can read (positions, normals, particle values, material values).

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
