# hide.tools.ShaderLoader

**class** · package [`hide.tools`](README.md) · source [`hide/tools/ShaderLoader.hx`](../../../../../hide/tools/ShaderLoader.hx) · available on editor (js)

Loads and compiles HXSL shaders from their source files (in the `haxe.classPath` of the configuration), reloaded when they change.

## Constructor

### new

```haxe
function new():Void
```

Creates the loader.

## Methods

### load

```haxe
function load(name:String):Null<hxsl.DynamicShader>
```

Returns a new instance of a shader by class name, or `null`.

### loadSharedShader

```haxe
function loadSharedShader(name:String, ?file:String):Null<CachedShader>
```

Returns the compiled shader of a class name (cached), or `null`.
