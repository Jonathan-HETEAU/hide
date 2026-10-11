# hide.comp.cdb.Selection

**typedef** · package [`hide.comp.cdb`](README.md) · module `hide.comp.cdb.Cursor` · source [`hide_js/hide/comp/cdb/Cursor.hx`](../../../../../../hide_js/hide/comp/cdb/Cursor.hx) · available on editor (js)

A rectangle of selected cells. `x1` is -1 when whole lines are selected.

## Fields

### y2

```haxe
var y2:Int
```

The last line index.

### y1

```haxe
var y1:Int
```

The first line index.

### x2

```haxe
var x2:Int
```

The last column index.

### x1

```haxe
var x1:Int
```

The first column index, or -1 for whole lines.

### origin

```haxe
var ?origin:Null<{ y:Int, x:Int }>
```

The cell where the selection started.
