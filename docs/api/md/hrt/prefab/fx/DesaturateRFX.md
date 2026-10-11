# hrt.prefab.fx.DesaturateRFX

**class** · package [`hrt.prefab.fx`](README.md) · module `hrt.prefab.fx.FX` · source [`hrt/prefab/fx/FX.hx`](../../../../../../hrt/prefab/fx/FX.hx)

Implements: `h3d.impl.RendererFX`

Desaturates the scene for the FX debug display (with a PBR renderer).

## Constructor

### new

```haxe
function new():Void
```

Creates the effect.

## Variables

### enabled

```haxe
var enabled:Bool
```

Enables the effect.

## Methods

### start

```haxe
function start(r:h3d.scene.Renderer):Void
```

Does nothing.

### begin

```haxe
function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

Desaturates the screen at the `Overlay` step.

### end

```haxe
function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

Does nothing.

### dispose

```haxe
function dispose():Void
```

Does nothing.

### modulate

```haxe
function modulate(t:Float):h3d.impl.RendererFX
```

Returns the effect.

### transition

```haxe
function transition(r1:h3d.impl.RendererFX, r2:h3d.impl.RendererFX):h3d.impl.RFXTransition
```

Returns the effect, without transition.
