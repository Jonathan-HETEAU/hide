# hide.view.shadereditor.SavedClipboard

**typedef** · package [`hide.view.shadereditor`](README.md) · module `hide.view.shadereditor.ShaderEditor` · source [`hide_js/hide/view/shadereditor/ShaderEditor.hx`](../../../../../../hide_js/hide/view/shadereditor/ShaderEditor.hx) · available on editor (js)

The nodes and edges copied to the clipboard.

## Fields

### nodes

```haxe
var nodes:Array<{ props:Dynamic, pos:h2d.col.Point, nodeType:Class<hrt.shgraph.ShaderNode> }>
```

The copied nodes.

### edges

```haxe
var edges:Array<{ toInputId:Int, toIdx:Int, fromOutputId:Int, fromIdx:Int }>
```

The edges between the copied nodes, by index in `nodes`.
