# hrt.shader.Terrain

**class** · package [`hrt.shader`](README.md) · source [`hrt/shader/Terrain.hx`](../../../../../hrt/shader/Terrain.hx)

Extends: `hxsl.Shader`

Renders a terrain tile: displacement by the height map, and blending of the surfaces by their weights.

## Constructor

### new

```haxe
function new():Void
```

## Variables

### GLOSS

```haxe
var GLOSS(get, set):Bool
```

### SHOW_GRID

```haxe
var SHOW_GRID(get, set):Bool
```

### SURFACE_COUNT

```haxe
var SURFACE_COUNT(get, set):Int
```

### CHECKER

```haxe
var CHECKER(get, set):Bool
```

### COMPLEXITY

```haxe
var COMPLEXITY(get, set):Bool
```

### PARALLAX

```haxe
var PARALLAX(get, set):Bool
```

### VERTEX_DISPLACEMENT

```haxe
var VERTEX_DISPLACEMENT(get, set):Bool
```

### primSize

```haxe
var primSize(get, set):hxsl.Vec
```

### cellSize

```haxe
var cellSize(get, set):hxsl.Vec
```

### heightMapSize

```haxe
var heightMapSize(get, set):hxsl.Vec
```

### albedoTextures

```haxe
var albedoTextures(get, set):hxsl.TextureArray
```

### normalTextures

```haxe
var normalTextures(get, set):hxsl.TextureArray
```

### pbrTextures

```haxe
var pbrTextures(get, set):hxsl.TextureArray
```

### weightTextures

```haxe
var weightTextures(get, set):hxsl.TextureArray
```

### surfaceIndexMap

```haxe
var surfaceIndexMap(get, set):hxsl.Texture
```

### heightMap

```haxe
var heightMap(get, set):hxsl.Texture
```

### normalMap

```haxe
var normalMap(get, set):hxsl.Texture
```

### surfaceParams

```haxe
var surfaceParams(get, set):Array<hxsl.Vec4>
```

### secondSurfaceParams

```haxe
var secondSurfaceParams(get, set):Array<hxsl.Vec4>
```

### heightBlendStrength

```haxe
var heightBlendStrength(get, set):Float
```

### blendSharpness

```haxe
var blendSharpness(get, set):Float
```

### parallaxAmount

```haxe
var parallaxAmount(get, set):Float
```

### minStep

```haxe
var minStep(get, set):Int
```

### maxStep

```haxe
var maxStep(get, set):Int
```

### tileIndex

```haxe
var tileIndex(get, set):hxsl.Vec
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
