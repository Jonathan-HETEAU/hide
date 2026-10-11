# hrt.prefab.l2d.NoiseGenerator

**class** · package [`hrt.prefab.l2d`](README.md) · source [`hrt/prefab/l2d/NoiseGenerator.hx`](../../../../../../hrt/prefab/l2d/NoiseGenerator.hx)

Extends: [`hrt.prefab.Object2D`](../Object2D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Generates a noise texture on the GPU, displayed as a bitmap.

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

### seed

```haxe
var seed:Int
```

The random seed.

### mode

```haxe
var mode:NoiseMode
```

The noise.

### scale

```haxe
var scale:Float
```

The scale of the noise.

### channels

```haxe
var channels:Int
```

The number of independent channels.

### normals

```haxe
var normals:Bool
```

Generates a normal map of the noise.

### contrast

```haxe
var contrast:Float
```

The contrast.

### brightness

```haxe
var brightness:Float
```

The brightness.

### repeat

```haxe
var repeat:RepeatMode
```

The tiling.

### size

```haxe
var size:Int
```

The size of the texture.

### octaves

```haxe
var octaves:Int
```

The number of octaves.

### persist

```haxe
var persist:Float
```

The amplitude factor between octaves.

### lacunarity

```haxe
var lacunarity:Float
```

The frequency factor between octaves.

### gain

```haxe
var gain:Float
```

The gain of the ridged noise.

### offset

```haxe
var offset:Float
```

The offset of the ridged noise.

### turbulence

```haxe
var turbulence:Float
```

The turbulence (domain distortion).

### turbulenceScale

```haxe
var turbulenceScale:Float
```

The scale of the turbulence.

### inverse

```haxe
var inverse:Bool
```

Inverts the noise.

## Methods

### updateTexture

```haxe
function updateTexture(t:h3d.mat.Texture):Void
```

Renders the noise into a texture.

### toTexture

```haxe
function toTexture():h3d.mat.Texture
```

Returns the noise texture (created once, rendered again when the context is lost).

### reload

```haxe
override function reload(p:Dynamic):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):NoiseGenerator
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object2D`](../Object2D.md): `local2d`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `blendMode`, `get_scaleArray`, `set_scaleArray`, `loadTransform`, `saveTransform`, `setTransform`, `applyTransform`, `getDefaultEditorName`, `getTransformMatrix`, `setTransformMatrix`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
