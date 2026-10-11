# hide.tools.CachedShader

**typedef** · package [`hide.tools`](README.md) · module `hide.tools.ShaderLoader` · source [`hide/tools/ShaderLoader.hx`](../../../../../hide/tools/ShaderLoader.hx) · available on editor (js)

A shader loaded by the `ShaderLoader`.

## Fields

### watch

```haxe
var watch:() -> Void
```

The file watch function.

### shader

```haxe
var shader:hxsl.SharedShader
```

The compiled shader.

### name

```haxe
var name:String
```

The class name.

### inits

```haxe
var inits:Array<{ variable:hxsl.TVar, value:Dynamic }>
```

The initial values of the variables.

### file

```haxe
var file:String
```

The source file.
