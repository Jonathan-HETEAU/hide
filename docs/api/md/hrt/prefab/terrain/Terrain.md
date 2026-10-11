# hrt.prefab.terrain.Terrain

**class** · package [`hrt.prefab.terrain`](README.md) · source [`hrt/prefab/terrain/Terrain.hx`](../../../../../../hrt/prefab/terrain/Terrain.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A terrain made of tiles, with height maps and painted surfaces, editable in the editor. Its textures are saved as binary files next to the prefab.

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

### terrain

```haxe
var terrain:TerrainMesh
```

The terrain mesh.

### tileSizeX

```haxe
var tileSizeX:Float
```

The X size of a tile.

### tileSizeY

```haxe
var tileSizeY:Float
```

The Y size of a tile.

### vertexPerMeter

```haxe
var vertexPerMeter:Float
```

The number of vertices per unit.

### weightMapPixelPerMeter

```haxe
var weightMapPixelPerMeter:Float
```

The number of pixels of the weight maps per unit.

### parallaxAmount

```haxe
var parallaxAmount:Float
```

The amount of parallax mapping (`0` to disable it).

### parallaxMinStep

```haxe
var parallaxMinStep:Int
```

The minimum number of parallax steps.

### parallaxMaxStep

```haxe
var parallaxMaxStep:Int
```

The maximum number of parallax steps.

### heightBlendStrength

```haxe
var heightBlendStrength:Float
```

The strength of the blending of the surfaces by height.

### blendSharpness

```haxe
var blendSharpness:Float
```

The sharpness of the blending of the surfaces.

### castShadows

```haxe
var castShadows:Bool
```

Casts shadows.

### showChecker _(editor (js) only)_

```haxe
var showChecker:Bool
```

Displays a checker texture (editor only).

### autoCreateTile _(editor (js) only)_

```haxe
var autoCreateTile:Bool
```

Creates the tiles while painting (editor only).

### allowDisconnectedTiles _(editor (js) only)_

```haxe
var allowDisconnectedTiles:Bool
```

Allows creating tiles not connected to the others (editor only).

### brushOpacity _(editor (js) only)_

```haxe
var brushOpacity:Float
```

The opacity of the brush (editor only).

## Methods

### localRayIntersection

```haxe
override function localRayIntersection(ray:h3d.col.Ray):Float
```

### initTerrain

```haxe
function initTerrain():Void
```

Creates the primitive and the surface textures, once they are loaded.

### saveTextures _(editor (js) only)_

```haxe
function saveTextures():Void
```

Saves the weight, height and normal textures. Throws if the terrain is not ready.

### saveHeightTextures _(editor (js) only)_

```haxe
function saveHeightTextures():Void
```

Saves the height maps of the tiles.

### saveNormalTextures _(editor (js) only)_

```haxe
function saveNormalTextures():Void
```

Saves the normal maps of the tiles.

### saveWeightTextures _(editor (js) only)_

```haxe
function saveWeightTextures():Void
```

Saves the packed weight maps and index maps of the tiles.

### makeInteractive

```haxe
override function makeInteractive():h3d.scene.Interactive
```

### setSelected _(editor (js) only)_

```haxe
override function setSelected(b:Bool):Bool
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
override function make(?sh:hrt.prefab.ContextMake):Terrain
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
