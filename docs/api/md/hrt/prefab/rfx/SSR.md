# hrt.prefab.rfx.SSR

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/SSR.hx`](../../../../../../hrt/prefab/rfx/SSR.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Screen space reflections, on the surfaces with a low roughness (or marked by the `ssrNormalMask` pass).

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

### ssrPass

```haxe
var ssrPass:h3d.pass.ScreenFx<SSRShader>
```

The ray marching pass.

### debugSSRMask

```haxe
var debugSSRMask:Bool
```

Displays the mask.

### intensity

```haxe
var intensity:Float
```

The intensity of the reflections.

### colorMul

```haxe
var colorMul:Float
```

The factor of the reflected color.

### thicknessValue

```haxe
var thicknessValue:Float
```

The thickness of the surfaces hit by the rays.

### blurRadius

```haxe
var blurRadius:Float
```

The blur radius.

### textureSize

```haxe
var textureSize:Float
```

The size of the reflection texture, relative to the screen.

### useMask

```haxe
var useMask:Bool
```

Reflects on the surfaces drawn in the `ssrNormalMask` pass.

### useRoughness

```haxe
var useRoughness:Bool
```

Reflects on the surfaces with a roughness below `maxRoughness`.

### maxRoughness

```haxe
var maxRoughness:Float
```

The maximum roughness of the reflecting surfaces.

### minAngle

```haxe
var minAngle:Float
```

The minimum angle between the reflection and the hit surface normal, in degrees (`0` to disable the check).

### rayMarchingResolution

```haxe
var rayMarchingResolution:Float
```

The resolution of the ray marching, from `0` to `1`.

### support4K

```haxe
var support4K:Bool
```

Keeps the full resolution above 2560x1440 (otherwise it is scaled down).

### vignettingRadius

```haxe
var vignettingRadius:Float
```

The radius of the fade of the reflections near the screen borders.

### vignettingSmoothness

```haxe
var vignettingSmoothness:Float
```

The smoothness of the fade near the screen borders.

## Methods

### begin

```haxe
override function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):SSR
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
