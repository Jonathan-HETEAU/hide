# Package `hrt.prefab.terrain`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Direction`](Direction.md) | enum | A direction in the grid of tiles (not used). |
| [`NormalBake`](NormalBake.md) | class | Computes a normal map from a height map. |
| [`PackWeight`](PackWeight.md) | class | Packs the weight textures of the surfaces into an index map and a packed weight texture (the strongest surfaces of each pixel). |
| [`Surface`](Surface.md) | class | A material of the terrain: textures with their placement and height blending. |
| [`SurfaceArray`](SurfaceArray.md) | class | The textures of all the surfaces, in texture arrays, with their parameters. |
| [`SurfaceProps`](SurfaceProps.md) | typedef | The serialized properties of a surface. |
| [`Terrain`](Terrain.md) | class | A terrain made of tiles, with height maps and painted surfaces, editable in the editor. |
| [`TerrainCopy`](TerrainCopy.md) | class | Copies a texture into a part of another, to resize the tiles. |
| [`TerrainMesh`](TerrainMesh.md) | class | The object of a `Terrain`: its tiles and surfaces. |
| [`TerrainResize`](TerrainResize.md) | class | Resizes the tiles of a terrain, resampling their textures. |
| [`Tile`](Tile.md) | class | A tile of a terrain, with its height map, normal map and surface weight maps. |
| [`UnpackWeight`](UnpackWeight.md) | class | Extracts the weight texture of a surface from the index map and the packed weight texture. |
