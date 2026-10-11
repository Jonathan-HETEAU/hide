# hrt.prefab.fx.InstanceDef

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.Emitter` · source [`hrt/prefab/fx/Emitter.hx`](../../../../../../hrt/prefab/fx/Emitter.hx)

The values of the particle parameters, evaluated for each particle.

## Constructor

### new

```haxe
function new():Void
```

Creates the definition.

## Variables

### localSpeed

```haxe
var localSpeed:Value
```

The speed, in the space of the emitter.

### worldSpeed

```haxe
var worldSpeed:Value
```

The speed, in world space.

### orbitSpeed

```haxe
var orbitSpeed:Value
```

The rotation speed around the emitter.

### orbitSpeedOverTime

```haxe
var orbitSpeedOverTime:Value
```

The factor of the orbit speed over the life of the particle.

### acceleration

```haxe
var acceleration:Value
```

The acceleration, in the space of the emitter.

### worldAcceleration

```haxe
var worldAcceleration:Value
```

The acceleration, in world space.

### localOffset

```haxe
var localOffset:Value
```

The position offset.

### pivot

```haxe
var pivot:Value
```

The pivot of the rotation and scale.

### scale

```haxe
var scale:Value
```

The scale.

### scaleOverTime

```haxe
var scaleOverTime:Value
```

The factor of the scale over the life of the particle.

### stretch

```haxe
var stretch:Value
```

The stretch along each axis.

### stretchVelocity

```haxe
var stretchVelocity:Value
```

The stretch along the speed, by velocity.

### rotation

```haxe
var rotation:Value
```

The rotation, in degrees.

### dampen

```haxe
var dampen:Value
```

The damping of the speed.

### maxVelocity

```haxe
var maxVelocity:Value
```

The maximum velocity.
