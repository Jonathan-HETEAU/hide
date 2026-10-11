# hrt.prefab.pbr.Anisotropy

**class** · package [`hrt.prefab.pbr`](README.md) · source [`hrt/prefab/pbr/Anisotropy.hx`](../../../../../../hrt/prefab/pbr/Anisotropy.hx)

Extends: [`hrt.prefab.Prefab`](../Prefab.md)

Adds anisotropic specular reflections to the materials of its parent `Material` (brushed metal, hair...).

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

### mode

```haxe
var mode:AnisotropyMode
```

Where the anisotropy comes from.

### intensity

```haxe
var intensity:Float
```

The intensity of the anisotropy.

### direction

```haxe
var direction:Float
```

The direction, in degrees.

### noiseFrequency

```haxe
var noiseFrequency:Float
```

The frequency of the noise (`Frequency` mode).

### noiseIntensity

```haxe
var noiseIntensity:Float
```

The intensity of the noise (`Frequency` mode).

### intensityFactor

```haxe
var intensityFactor:Float
```

The factor of the intensity texture (`NoiseTexture` mode).

### noiseIntensityPath

```haxe
var noiseIntensityPath:String
```

The path of the intensity texture (`NoiseTexture` mode).

### noiseDirectionPath

```haxe
var noiseDirectionPath:String
```

The path of the direction texture (`NoiseTexture` mode).

### rotationOffset

```haxe
var rotationOffset:Float
```

The rotation added to the texture directions, in degrees.

### flowMapPath

```haxe
var flowMapPath:String
```

The path of the flow map (`FlowMap` mode).

### debugDirection

```haxe
var debugDirection:Bool
```

Displays the direction.

## Methods

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
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
override function make(?sh:hrt.prefab.ContextMake):Anisotropy
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
