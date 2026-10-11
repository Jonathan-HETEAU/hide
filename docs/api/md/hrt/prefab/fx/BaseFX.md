# hrt.prefab.fx.BaseFX

**interface** · package [`hrt.prefab.fx`](README.md) · source [`hrt/prefab/fx/BaseFX.hx`](../../../../../../hrt/prefab/fx/BaseFX.hx)

Implemented by: [`hrt.prefab.fx.FX`](FX.md), [`hrt.prefab.fx.FX2D`](FX2D.md)

The common properties of the 3D and 2D FX prefabs.

## Variables

### duration

```haxe
var duration:Float
```

The duration of the FX, in seconds.

### startDelay

```haxe
var startDelay:Float
```

The delay before the FX starts, in seconds.

### scriptCode

```haxe
var scriptCode:String
```

The script of the FX.

### cullingRadius

```haxe
var cullingRadius:Float
```

The radius of the culling sphere.

### markers

```haxe
var markers:Array<{ t:Float }>
```

The time markers, in seconds.

## Methods

### refreshObjectAnims _(editor (js) only)_

```haxe
function refreshObjectAnims():Void
```

Rebuilds the object animations (editor only).
