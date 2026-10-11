# hide.comp.RadialMenu

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/RadialMenu.hx`](../../../../../hide_js/hide/comp/RadialMenu.hx) · available on editor (js)

A circular menu opened around a point.

## Constructor

### new

```haxe
function new(items:Array<RadialMenuItem>, ?absPos:{ y:Float, x:Float }):Void
```

Creates the menu of items at a position (or the mouse position).

## Static methods

### createFromPoint

```haxe
static function createFromPoint(x:Float, y:Float, items:Array<RadialMenuItem>):Void
```

Opens a radial menu at a point, unless one is already open.
