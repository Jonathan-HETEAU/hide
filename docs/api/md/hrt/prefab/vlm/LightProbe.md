# hrt.prefab.vlm.LightProbe

**class** · package [`hrt.prefab.vlm`](README.md) · source [`hrt/prefab/vlm/LightProbe.hx`](../../../../../../hrt/prefab/vlm/LightProbe.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A local environment lighting in a volume (its unit box), from a texture or a capture of the scene.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### mode

```haxe
var mode:ProbeMode
```

Where the environment comes from.

### fadeDist

```haxe
var fadeDist:Float
```

The fade distance near the bounds.

### fadeMode

```haxe
var fadeMode:ProbeFadeMode
```

The fade mode.

### shape

```haxe
var shape:Shape
```

The shape.

### texturePath

```haxe
var texturePath:String
```

The path of the environment texture (`Texture` mode).

### hdrMax

```haxe
var hdrMax:Float
```

The maximum value of the HDR colors (`Texture` mode).

### rotation

```haxe
var rotation:Float
```

The rotation of the environment, in degrees (`Texture` mode).

### bounce

```haxe
var bounce:Int
```

The number of light bounces captured (`Capture` mode).

### emissive

```haxe
var emissive:Float
```

The power of the emissive lighting in the capture (`Capture` mode).

### power

```haxe
var power:Float
```

The power of the lighting.

### sampleBits

```haxe
var sampleBits:Int
```

The number of samples of the computation, as a power of 2.

### diffSize

```haxe
var diffSize:Int
```

The size of the diffuse map.

### specSize

```haxe
var specSize:Int
```

The size of the specular map.

### ignoredSpecLevels

```haxe
var ignoredSpecLevels:Int
```

The number of lowest mip levels of the specular map not used.

### debugDisplay

```haxe
var debugDisplay:Bool
```

Displays the preview spheres.

### sphereRadius

```haxe
var sphereRadius:Float
```

The radius of the preview spheres.

## Methods

### applyTransform

```haxe
override function applyTransform():Void
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):LightProbe
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
