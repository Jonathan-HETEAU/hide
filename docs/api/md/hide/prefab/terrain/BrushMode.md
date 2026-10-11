# hide.prefab.terrain.BrushMode

**class** · package [`hide.prefab.terrain`](README.md) · module `hide.prefab.terrain.Brush` · source [`hide_js/hide/prefab/terrain/Brush.hx`](../../../../../../hide_js/hide/prefab/terrain/Brush.hx) · available on editor (js)

The mode and modifiers of a terrain brush.

## Constructor

### new

```haxe
function new():Void
```

Creates the default mode.

## Variables

### accumulate

```haxe
var accumulate:Bool
```

The stamps of a stroke add up instead of taking the maximum.

### subAction

```haxe
var subAction:Bool
```

The opposite action (shift held).

### lockDir

```haxe
var lockDir:Bool
```

Locks the stroke to the main axis of its start (alt held).

### snapToGrid

```haxe
var snapToGrid:Bool
```

Snaps the brush to the vertices (ctrl held).

### mode

```haxe
var mode:Mode
```

The brush action.

### lockAxe

```haxe
var lockAxe:LockAxe
```

The axis the stroke is locked to.

### setHeightValue

```haxe
var setHeightValue:Float
```

The target height of the `Set` mode.
