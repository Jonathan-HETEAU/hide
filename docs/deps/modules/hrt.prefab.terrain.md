# Package `hrt.prefab.terrain`

[← retour](../DEPENDENCIES.md)

## hrt.prefab.terrain.PackWeight

- Fichier : `hrt/prefab/terrain/PackWeight.hx` — 42 lignes — 2 blocs doc
- Types : `class PackWeight`
- Héritage : `PackWeight` extends `h3d.shader.ScreenShader`
- Utilisé par : `hrt.prefab.terrain.Terrain`

## hrt.prefab.terrain.Surface

- Fichier : `hrt/prefab/terrain/Surface.hx` — 139 lignes — 22 blocs doc
- Types : `class Surface`, `class SurfaceArray`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`, `hrt.prefab.terrain.TerrainMesh`

## hrt.prefab.terrain.Terrain

- Fichier : `hrt/prefab/terrain/Terrain.hx` — 685 lignes — 31 blocs doc — contient du `#if`
- Types : `typedef SurfaceProps`, `class Terrain`
- Héritage : `Terrain` extends `Object3D`
- Dépend de : `hide.Element`, `hide.Ide`, `hide.prefab.EditContext`, `hide.prefab.HideProps`, `hide.prefab.terrain.TerrainEditor`, `hrt.prefab.Object3D` (extends/use), `hrt.prefab.Prefab`, `hrt.prefab.terrain.PackWeight`, `hrt.prefab.terrain.TerrainMesh`, `hrt.prefab.terrain.TerrainResize`, `hrt.prefab.terrain.Tile`, `hrt.prefab.terrain.UnpackWeight`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`, `hrt.prefab.terrain.TerrainResize`

## hrt.prefab.terrain.TerrainMesh

- Fichier : `hrt/prefab/terrain/TerrainMesh.hx` — 524 lignes — 41 blocs doc — contient du `#if`
- Types : `class TerrainMesh`
- Héritage : `TerrainMesh` extends `h3d.scene.Object`
- Dépend de : `hrt.prefab.terrain.Surface`, `hrt.prefab.terrain.Tile`
- Utilisé par : `hide.prefab.terrain.Brush`, `hide.prefab.terrain.TerrainEditor`, `hrt.prefab.terrain.Terrain`, `hrt.prefab.terrain.TerrainResize`, `hrt.prefab.terrain.Tile`

## hrt.prefab.terrain.TerrainResize

- Fichier : `hrt/prefab/terrain/TerrainResize.hx` — 160 lignes — 4 blocs doc
- Types : `class TerrainCopy`, `class TerrainResize`
- Héritage : `TerrainCopy` extends `h3d.shader.ScreenShader`
- Dépend de : `hrt.prefab.terrain.Terrain`, `hrt.prefab.terrain.TerrainMesh`, `hrt.prefab.terrain.Tile`
- Utilisé par : `hrt.prefab.terrain.Terrain`

## hrt.prefab.terrain.Tile

- Fichier : `hrt/prefab/terrain/Tile.hx` — 569 lignes — 32 blocs doc — contient du `#if`
- Types : `class NormalBake`, `enum Direction`, `class Tile`
- Héritage : `NormalBake` extends `h3d.shader.ScreenShader`, `Tile` extends `h3d.scene.Mesh`
- Dépend de : `hrt.prefab.terrain.TerrainMesh`, `hrt.prefab.terrain.UnpackWeight`, `hrt.shader.Terrain`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`, `hrt.prefab.terrain.Terrain`, `hrt.prefab.terrain.TerrainMesh`, `hrt.prefab.terrain.TerrainResize`

## hrt.prefab.terrain.UnpackWeight

- Fichier : `hrt/prefab/terrain/UnpackWeight.hx` — 26 lignes — 1 blocs doc
- Types : `class UnpackWeight`
- Héritage : `UnpackWeight` extends `h3d.shader.ScreenShader`
- Utilisé par : `hrt.prefab.terrain.Terrain`, `hrt.prefab.terrain.Tile`
