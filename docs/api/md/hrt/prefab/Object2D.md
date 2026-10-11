# hrt.prefab.Object2D

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Object2D.hx`](../../../../../hrt/prefab/Object2D.hx)

Extends: [`hrt.prefab.Prefab`](Prefab.md)

Subclasses: [`hrt.prefab.fx.Emitter2D`](fx/Emitter2D.md), [`hrt.prefab.fx.FX2D`](fx/FX2D.md), [`hrt.prefab.l2d.Anim2D`](l2d/Anim2D.md), [`hrt.prefab.l2d.Atlas`](l2d/Atlas.md), [`hrt.prefab.l2d.Bitmap`](l2d/Bitmap.md), [`hrt.prefab.l2d.Flow`](l2d/Flow.md), [`hrt.prefab.l2d.Gradient`](l2d/Gradient.md), [`hrt.prefab.l2d.NoiseGenerator`](l2d/NoiseGenerator.md), [`hrt.prefab.l2d.Particle2D`](l2d/Particle2D.md), [`hrt.prefab.l2d.Text`](l2d/Text.md)

A prefab with a 2D transform, creating a 2D object (`local2d`). The base class of the 2D prefabs. The rotation is in degrees.

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

## Static methods

### getLocal2d

```haxe
static inline function getLocal2d(prefab:Prefab):h2d.Object
```

Returns the 2D object of the prefab if it is an `Object2D`, or `null`.

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### local2d

```haxe
var local2d:h2d.Object
```

The 2D object created by `make`, or `null` before.

### x

```haxe
var x:Float
```

The X position.

### y

```haxe
var y:Float
```

The Y position.

### scaleX

```haxe
var scaleX:Float
```

The X scale.

### scaleY

```haxe
var scaleY:Float
```

The Y scale.

### rotation

```haxe
var rotation:Float
```

The rotation, in degrees.

### visible

```haxe
var visible:Bool
```

Tells if the object is visible.

### blendMode

```haxe
var blendMode:h2d.BlendMode
```

The blend mode.

## Methods

### get_scaleArray

```haxe
inline function get_scaleArray():Array<Float>
```

### set_scaleArray

```haxe
inline function set_scaleArray(array:Array<Float>):Array<Float>
```

### loadTransform

```haxe
function loadTransform(t:{ y:Float, x:Float, scaleY:Float, scaleX:Float, rotation:Float }):Void
```

Sets the position, scale and rotation from a structure returned by `saveTransform`.

### saveTransform

```haxe
function saveTransform():{ y:Float, x:Float, scaleY:Float, scaleX:Float, rotation:Float }
```

Returns the position, scale and rotation, as a structure.

### setTransform

```haxe
function setTransform(t:{ y:Float, x:Float, scaleY:Float, scaleX:Float, rotation:Float }):Void
```

Sets the position, scale and rotation from a structure.

### applyTransform

```haxe
function applyTransform(o:h2d.Object):Void
```

Applies the position, scale and rotation to the object.

### getDefaultEditorName

```haxe
override function getDefaultEditorName():String
```

### getTransformMatrix

```haxe
function getTransformMatrix(?m:h2d.col.Matrix):h2d.col.Matrix
```

Returns the local transform matrix (in `m` if given).

### setTransformMatrix

```haxe
function setTransformMatrix(m:h2d.col.Matrix):Void
```

Sets the position, scale and rotation from a matrix.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
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
override function make(?sh:ContextMake):Object2D
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
