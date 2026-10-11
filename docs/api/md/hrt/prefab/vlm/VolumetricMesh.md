# hrt.prefab.vlm.VolumetricMesh

**class** · package [`hrt.prefab.vlm`](README.md) · source [`hrt/prefab/vlm/VolumetricMesh.hx`](../../../../../../hrt/prefab/vlm/VolumetricMesh.hx)

Extends: `h3d.scene.Mesh`

The mesh of a `VolumetricLightmap`: applies the lighting of its probes to the pixels inside its unit box.

## Constructor

### new

```haxe
function new(?parent:h3d.scene.Object):Void
```

Creates the mesh.

## Variables

### lightProbeTexture

```haxe
var lightProbeTexture:h3d.mat.Texture
```

The spherical harmonics of the probes.

### shOrder

```haxe
var shOrder:Int
```

The order of the spherical harmonics.

### voxelSize

```haxe
var voxelSize(default, set):h3d.Vector
```

The distance between the probes.

### probeCount

```haxe
var probeCount:h3d.col.IPoint
```

The number of probes on each axis.

### useAlignedProb

```haxe
var useAlignedProb:Bool
```

Aligns the probes on a world grid.

### strength

```haxe
var strength:Float
```

The strength of the lighting.

### lastBakedProbeIndex

```haxe
var lastBakedProbeIndex:Int
```

The number of probes baked (`-1` before baking).

## Methods

### clone

```haxe
override function clone(?o:h3d.scene.Object):h3d.scene.Object
```

### getProbeSH

```haxe
function getProbeSH(coords:h3d.col.IPoint, ?pixels:hxd.Pixels):SphericalHarmonic
```

Returns the spherical harmonics of a probe (zero if not baked).

### getCoefCount

```haxe
inline function getCoefCount():Int
```

Returns the number of coefficients.

### getProbePosition

```haxe
function getProbePosition(coords:h3d.col.IPoint):h3d.Vector
```

Returns the world position of a probe.

### getProbeCoords

```haxe
function getProbeCoords(i:Int):h3d.col.IPoint
```

Returns the grid coordinates of the probe `i`.

### getProbeCount

```haxe
function getProbeCount():Int
```

Returns the number of probes.

### updateProbeCount

```haxe
function updateProbeCount():Void
```

Computes the number of probes from the scale and the voxel size.

### load

```haxe
function load(bytes:Bytes):Bool
```

Loads the compressed probe data. Returns `false` if it does not match the probe count.

### save

```haxe
function save():Bytes
```

Returns the compressed probe data.

### getWorldAlignment

```haxe
function getWorldAlignment(lightmaps:Array<VolumetricMesh>):h3d.Vector
```

Returns the largest distance between probes of this mesh and the others, for the world alignment.

### isInsideVolume

```haxe
function isInsideVolume(worldPos:h3d.col.Point):Bool
```

Tells if a world position is inside the volume.
