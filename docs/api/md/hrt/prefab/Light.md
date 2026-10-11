# hrt.prefab.Light

**class** · package [`hrt.prefab`](README.md) · source [`hrt/prefab/Light.hx`](../../../../../hrt/prefab/Light.hx)

Extends: [`hrt.prefab.Object3D`](Object3D.md) → [`hrt.prefab.Prefab`](Prefab.md)

A PBR light (`h3d.scene.pbr.Light`): point, directional, spot, capsule or rectangle, with its shadows.

## Constructor

### new

```haxe
function new(parent:Prefab, contextShared:ContextShared):Void
```

Creates the prefab.

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### kind

```haxe
var kind:LightKind
```

The type of light.

### color

```haxe
var color:Int
```

The color (`0xRRGGBB`).

### power

```haxe
var power:Float
```

The intensity.

### occlusionFactor

```haxe
var occlusionFactor:Float
```

How much the ambient occlusion attenuates the light.

### isMainLight

```haxe
var isMainLight:Bool
```

Marks the main light of the scene (`h3d.scene.pbr.Light.isMainLight`).

### shadows

```haxe
var shadows:LightShadows
```

The shadows.

### range

```haxe
var range:Float
```

The range of the light: point, spot, capsule and rectangle lights.

### size

```haxe
var size:Float
```

The size of the light source: radius of point lights, and of capsule lights.

### zNear

```haxe
var zNear:Float
```

The near distance of the shadow maps of point and capsule lights.

### angle

```haxe
var angle:Float
```

The angle of the cone of a spot light, in degrees.

### fallOff

```haxe
var fallOff:Float
```

The angle where the light starts to fade, in degrees: spot and rectangle lights.

### cookiePath

```haxe
var cookiePath:String
```

The texture projected by a spot light, or `null`.

### cookieTex

```haxe
var cookieTex:h3d.mat.Texture
```

The texture projected by a spot light, loaded from `cookiePath`.

### maxDist

```haxe
var maxDist:Float
```

The maximum distance of the shadows of a directional light (`-1` for the far plane of the camera).

### minDist

```haxe
var minDist:Float
```

The minimum distance of the shadows of a directional light (`-1` for the near plane of the camera).

### autoShrink

```haxe
var autoShrink:Bool
```

Shrinks the shadow map of a directional light to the bounds of the casters.

### autoZPlanes

```haxe
var autoZPlanes:Bool
```

Computes the depth range of the shadow map of a directional light from the casters.

### length

```haxe
var length:Float
```

The length of a capsule light.

### width

```haxe
var width:Float
```

The width of a rectangle light.

### height

```haxe
var height:Float
```

The height of a rectangle light.

### verticalAngle

```haxe
var verticalAngle:Float
```

The vertical spread of a rectangle light.

### horizontalAngle

```haxe
var horizontalAngle:Float
```

The horizontal spread of a rectangle light.

### cascade

```haxe
var cascade:Bool
```

Uses cascaded shadow maps for a directional light.

### cascadeNbr

```haxe
var cascadeNbr:Int
```

The number of shadow cascades.

### cascadePow

```haxe
var cascadePow:Float
```

The power of the distribution of the cascades.

### firstCascadeSize

```haxe
var firstCascadeSize:Float
```

The size of the first cascade.

### minPixelSize

```haxe
var minPixelSize:Int
```

The minimum size of a caster, in pixels of the shadow map.

### castingMaxDist

```haxe
var castingMaxDist:Float
```

The maximum distance of the casters of the cascades (`0` for no limit).

### transitionFraction

```haxe
var transitionFraction:Float
```

The fraction of a cascade used for the transition to the next one.

### params

```haxe
var params:Array<CascadeParams>
```

The parameters of each cascade.

### debugShader

```haxe
var debugShader:Bool
```

Displays the cascades for debugging.

### highPrecision

```haxe
var highPrecision:Bool
```

Uses a high precision shadow map for the cascades.

### debugDisplay

```haxe
var debugDisplay:Bool
```

Displays the light in the editor.

## Methods

### applyTransform

```haxe
override function applyTransform():Void
```

### applyTransformToObject

```haxe
function applyTransformToObject(o:h3d.scene.Object):Void
```

Applies the transform of the prefab to a light object.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:EditContext2):Void
```

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### needUniqueName _(editor (js) only)_

```haxe
override function needUniqueName():Bool
```

### make

```haxe
override function make(?sh:ContextMake):Light
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
