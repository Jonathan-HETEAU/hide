# Package `hide.prefab.terrain`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AlphaMult`](AlphaMult.md) | class | Multiplies the alpha by `amount`. |
| [`Brush`](Brush.md) | class | A terrain brush: a texture stamped along the stroke. |
| [`BrushMode`](BrushMode.md) | class | The mode and modifiers of a terrain brush. |
| [`BrushPreview`](BrushPreview.md) | class | Shows the brush on the terrain as a decal. |
| [`ClampWeight`](ClampWeight.md) | class | Terrain painting shader: where more than 3 surfaces are painted, removes the one with the smallest weight (except the base surface). |
| [`CustomRenderer`](CustomRenderer.md) | class | A renderer drawing only one pass, used by the terrain editor. |
| [`CustomUV`](CustomUV.md) | class | Terrain editor shader: outputs the UV and tile index of the terrain, to pick the position under the mouse. |
| [`GenerateIndex`](GenerateIndex.md) | class | Terrain painting shader: computes the surface index map from the weight maps. |
| [`LockAxe`](LockAxe.md) | enum | The axis the stroke is locked to. |
| [`Mode`](Mode.md) | enum | The action of a terrain brush. |
| [`NormalizeWeight`](NormalizeWeight.md) | class | Terrain painting shader: normalizes the surface weights. |
| [`RenderMode`](RenderMode.md) | enum | The debug render mode of the terrain editor. |
| [`SetHeight`](SetHeight.md) | class | Terrain sculpting shader: moves the height towards a target height with the stroke strength. |
| [`SmoothHeight`](SmoothHeight.md) | class | Terrain sculpting shader: moves the height towards the average of its neighbors with the stroke strength. |
| [`StrokeBuffer`](StrokeBuffer.md) | class | A render target accumulating a brush stroke on one terrain tile. |
| [`StrokeBufferArray`](StrokeBufferArray.md) | class | The stroke buffers of the tiles touched by a stroke. |
| [`SwapIndex`](SwapIndex.md) | class | Terrain shader: replaces surface indexes in the surface index map. |
| [`TerrainEditor`](TerrainEditor.md) | class | The editor of a terrain prefab: sculpts the heights, paints the surfaces and deletes the tiles with brushes. |
| [`TerrainRevertData`](TerrainRevertData.md) | class | The undo data of a surface change. |
| [`TileRevertData`](TileRevertData.md) | class | The undo data of a tile change: its maps before and after. |
