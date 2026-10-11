# hrt.prefab.ShaderDef

**typedef** · package [`hrt.prefab`](README.md) · module `hrt.prefab.Cache` · source [`hrt/prefab/Cache.hx`](../../../../../hrt/prefab/Cache.hx)

A shader loaded by `ContextShared.loadShader`, with the initial values of its parameters.

## Fields

### shader

```haxe
var shader:hxsl.SharedShader
```

The shader.

### inits

```haxe
var inits:Array<{ variable:hxsl.TVar, value:Dynamic }>
```

The initial values of the parameters.
