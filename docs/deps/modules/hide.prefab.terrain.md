# Package `hide.prefab.terrain`

[← retour](../DEPENDENCIES.md)

## hide.prefab.terrain.Brush

- Fichier : `hide_js/hide/prefab/terrain/Brush.hx` — 260 lignes — 41 blocs doc
- Types : `class Brush`, `enum Mode`, `enum LockAxe`, `class BrushMode`, `class AlphaMult`, `class BrushPreview`
- Héritage : `AlphaMult` extends `hxsl.Shader`, `BrushPreview` extends `h3d.scene.Mesh`
- Dépend de : `hrt.prefab.terrain.TerrainMesh`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.ClampWeight

- Fichier : `hide_js/hide/prefab/terrain/ClampWeight.hx` — 35 lignes — 1 blocs doc
- Types : `class ClampWeight`
- Héritage : `ClampWeight` extends `h3d.shader.ScreenShader`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.CustomRenderer

- Fichier : `hide_js/hide/prefab/terrain/CustomRenderer.hx` — 27 lignes — 2 blocs doc
- Types : `class CustomRenderer`
- Héritage : `CustomRenderer` extends `h3d.scene.Renderer`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.CustomUV

- Fichier : `hide_js/hide/prefab/terrain/CustomUV.hx` — 31 lignes — 1 blocs doc
- Types : `class CustomUV`
- Héritage : `CustomUV` extends `hxsl.Shader`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.GenerateIndex

- Fichier : `hide_js/hide/prefab/terrain/GenerateIndex.hx` — 36 lignes — 2 blocs doc
- Types : `class GenerateIndex`
- Héritage : `GenerateIndex` extends `h3d.shader.ScreenShader`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.NormalizeWeight

- Fichier : `hide_js/hide/prefab/terrain/NormalizeWeight.hx` — 29 lignes — 1 blocs doc
- Types : `class NormalizeWeight`
- Héritage : `NormalizeWeight` extends `h3d.shader.ScreenShader`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.SetHeight

- Fichier : `hide_js/hide/prefab/terrain/SetHeight.hx` — 21 lignes — 1 blocs doc
- Types : `class SetHeight`
- Héritage : `SetHeight` extends `h3d.shader.ScreenShader`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.SmoothHeight

- Fichier : `hide_js/hide/prefab/terrain/SmoothHeight.hx` — 31 lignes — 1 blocs doc
- Types : `class SmoothHeight`
- Héritage : `SmoothHeight` extends `h3d.shader.ScreenShader`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.StrokeBuffer

- Fichier : `hide_js/hide/prefab/terrain/StrokeBuffer.hx` — 149 lignes — 19 blocs doc
- Types : `class StrokeBuffer`, `class StrokeBufferArray`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.SwapIndex

- Fichier : `hide_js/hide/prefab/terrain/SwapIndex.hx` — 47 lignes — 2 blocs doc
- Types : `class SwapIndex`
- Héritage : `SwapIndex` extends `h3d.shader.ScreenShader`
- Utilisé par : `hide.prefab.terrain.TerrainEditor`

## hide.prefab.terrain.TerrainEditor

- Fichier : `hide_js/hide/prefab/terrain/TerrainEditor.hx` — 1346 lignes — 34 blocs doc — contient du `#if`
- Types : `enum RenderMode`, `class TerrainRevertData`, `class TileRevertData`, `class TerrainEditor`
- Dépend de : `hide.Element`, `hide.prefab.EditContext`, `hide.prefab.terrain.Brush`, `hide.prefab.terrain.ClampWeight`, `hide.prefab.terrain.CustomRenderer`, `hide.prefab.terrain.CustomUV`, `hide.prefab.terrain.GenerateIndex`, `hide.prefab.terrain.NormalizeWeight`, `hide.prefab.terrain.SetHeight`, `hide.prefab.terrain.SmoothHeight`, `hide.prefab.terrain.StrokeBuffer`, `hide.prefab.terrain.SwapIndex`, `hide.ui.UndoHistory`, `hrt.prefab.terrain.Surface`, `hrt.prefab.terrain.Terrain`, `hrt.prefab.terrain.TerrainMesh`, `hrt.prefab.terrain.Tile` (import/use), `hrt.shader.Brush`
- Utilisé par : `hrt.prefab.terrain.Terrain`
