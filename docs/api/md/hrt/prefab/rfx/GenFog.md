# hrt.prefab.rfx.GenFog

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/GenFog.hx`](../../../../../../hrt/prefab/rfx/GenFog.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A fog depending on the distance and the height, with a color gradient and a light scattering toward the shadow light.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### intensity

```haxe
var intensity:Float
```

The intensity of the fog.

### startDistance

```haxe
var startDistance:Float
```

The distance at which the distance fog starts.

### endDistance

```haxe
var endDistance:Float
```

The distance at which the distance fog is full.

### distanceOpacity

```haxe
var distanceOpacity:Float
```

The opacity of the distance fog (`0` to disable it).

### distanceFixed

```haxe
var distanceFixed:Bool
```

Measures the distance from the camera target instead of the camera.

### startHeight

```haxe
var startHeight:Float
```

The height at which the height fog starts.

### endHeight

```haxe
var endHeight:Float
```

The height at which the height fog is full.

### heightOpacity

```haxe
var heightOpacity:Float
```

The opacity of the height fog (`0` to disable it).

### startOpacity

```haxe
var startOpacity:Float
```

The opacity of the fog at its start.

### endOpacity

```haxe
var endOpacity:Float
```

The opacity of the fog when full.

### startColor

```haxe
var startColor:Int
```

The color of the fog at its start, as RGB.

### endColor

```haxe
var endColor:Int
```

The color of the fog when full, as RGB.

### renderMode

```haxe
var renderMode:GenFogRenderMode
```

When the fog is rendered.

### noise

```haxe
var noise:GenFogNoise
```

The noise displacing the fog, or `null`.

### posX

```haxe
var posX:Float
```

The X of the fog origin.

### posY

```haxe
var posY:Float
```

The Y of the fog origin.

### posZ

```haxe
var posZ:Float
```

The Z of the fog origin.

### usePosition

```haxe
var usePosition:Bool
```

Measures the distance and height from `posX`, `posY`, `posZ` instead of the camera and the ground.

### lightColor

```haxe
var lightColor:Int
```

The color of the light scattered toward the shadow light, as RGB.

### lightColorAmount

```haxe
var lightColorAmount:Float
```

The intensity of the scattered light.

### lightAngle

```haxe
var lightAngle:Float
```

The angle around the light direction where the light is scattered, in degrees.

## Methods

### end

```haxe
override function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### modulate

```haxe
override function modulate(t:Float):GenFog
```

### transition

```haxe
override function transition(r1:h3d.impl.RendererFX, r2:h3d.impl.RendererFX):h3d.impl.RFXTransition
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):GenFog
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
