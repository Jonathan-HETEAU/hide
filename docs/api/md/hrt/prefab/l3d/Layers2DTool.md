# hrt.prefab.l3d.Layers2DTool

**class** · package [`hrt.prefab.l3d`](README.md) · module `hrt.prefab.l3d.Layers2D` · source [`hrt/prefab/l3d/Layers2D.hx`](../../../../../../hrt/prefab/l3d/Layers2D.hx) · available on editor (js)

Extends: [`hrt.prefab.editor.Tool`](../editor/Tool.md)

The tool painting the layers of a `Layers2D`.

## Constructor

### new

```haxe
function new(ctx:hrt.prefab.EditContext2, layers:Layers2D):Void
```

Creates the tool.

## Methods

### drawCircle

```haxe
function drawCircle(originX:Float, originY:Float, originZ:Float, radius:Float, thickness:Float, color:Int):Void
```

Displays the brush circle (editor only).

## Inherited members

- from [`hrt.prefab.editor.Tool`](../editor/Tool.md): `mouseSupport`, `foreground`, `enter`, `quit`, `onDeleteCommand`
