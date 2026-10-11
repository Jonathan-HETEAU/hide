# hrt.prefab.l3d.SprayConfig

**typedef** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Spray` · source [`hrt/prefab/l3d/Spray.hx`](../../../../../../hrt/prefab/l3d/Spray.hx)

The configuration of the spray brush.

## Fields

### zOffset

```haxe
var zOffset:Float
```

The height offset of the items above the ground.

### tiltAmount

```haxe
var tiltAmount:Float
```

The random tilt of the items.

### step

```haxe
var step:Float
```

The distance between the items placed one by one.

### scaleOffset

```haxe
var scaleOffset:Float
```

The random variation of the scale.

### scale

```haxe
var scale:Float
```

The scale of the items.

### rotationOffset

```haxe
var rotationOffset:Float
```

The random variation of the rotation, in degrees.

### rotation

```haxe
var rotation:Float
```

The rotation of the items around Z, in degrees.

### radius

```haxe
var radius:Float
```

The radius of the brush.

### orientTerrain

```haxe
var orientTerrain:Float
```

How much the items follow the slope of the ground, from `0` to `1`.

### enableBrush

```haxe
var enableBrush:Bool
```

Enables the brush (and locks the spray in the editor).

### dontRepeatItem

```haxe
var dontRepeatItem:Bool
```

Avoids placing the same item twice in a row.

### densityOffset

```haxe
var densityOffset:Int
```

The random number of items added to `density`.

### density

```haxe
var density:Int
```

The number of items per stroke (`1` to place one item every `step`).

### deleteRadius

```haxe
var deleteRadius:Float
```

The radius of the brush when deleting (with Shift).
