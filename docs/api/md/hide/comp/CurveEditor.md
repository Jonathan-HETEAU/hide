# hide.comp.CurveEditor

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/CurveEditor.hx`](../../../../../hide_js/hide/comp/CurveEditor.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

The curve editor component: edits the keys and handles of several curves in an SVG view.

## Constructor

### new

```haxe
function new(undo:hide.ui.UndoHistory, ?parent:hide.Element, ?enableTimeMarker:Bool = true):Void
```

Creates the editor. `enableTimeMarker` shows the current time marker.

## Static variables

### CURVE_COLORS

```haxe
static var CURVE_COLORS:Array<Int>
```

The colors of the curves.

## Variables

### xScale

```haxe
var xScale:Float
```

The horizontal zoom, in pixels per time unit.

### yScale

```haxe
var yScale:Float
```

The vertical zoom, in pixels per value unit.

### xOffset

```haxe
var xOffset:Float
```

The time at the left of the view.

### yOffset

```haxe
var yOffset:Float
```

The value at the middle of the view.

### curves

```haxe
var curves(default, set):Array<hrt.prefab.Curve>
```

The edited curves.

### undo

```haxe
var undo:hide.ui.UndoHistory
```

The undo history.

### lockViewX

```haxe
var lockViewX:Bool
```

Prevents the horizontal pan and zoom.

### lockViewY

```haxe
var lockViewY:Bool
```

Prevents the vertical pan and zoom.

### lockKeyX

```haxe
var lockKeyX:Bool
```

Restricts the key moves: in the curve view the keys keep their value, in the overview they keep their time.

### maxLength

```haxe
var maxLength:Float
```

If above 0, the keys can't be moved after this time, and the area after it is darkened.

### evaluator

```haxe
var evaluator:hrt.prefab.fx.Evaluator
```

The evaluator used to draw the curves.

### components

```haxe
var components:Array<CurveEditorComponent>
```

The components drawn over the editor.

### componentsGroup

```haxe
var componentsGroup:hide.Element
```

The element of the components.

## Methods

### onRefreshProps

```haxe
dynamic function onRefreshProps():Void
```

Called when the properties of the curves must be refreshed.

### onChange

```haxe
dynamic function onChange(anim:Bool):Void
```

Called when the curves change. `anim` is true while dragging.

### onKeyMove

```haxe
dynamic function onKeyMove(key:CurveKey, prevTime:Float, prevVal:Float):Void
```

Called when a key is moved, with its previous time and value.

### requestXZoom

```haxe
dynamic function requestXZoom(xmin:Float, xmax:Float):Void
```

Called by `zoomAll` when `lockViewX` is set, to ask the owner to zoom on a time range.

### setPan

```haxe
function setPan(xoff:Float, yoff:Float):Void
```

Sets the view offsets.

### setYZoom

```haxe
function setYZoom(yMin:Float, yMax:Float):Void
```

Zooms on a value range.

### setXZoom

```haxe
function setXZoom(xMin:Float, xMax:Float):Void
```

Zooms on a time range.

### zoomAll

```haxe
function zoomAll():Void
```

Zooms on the visible curves.

### refresh

```haxe
function refresh(?anim:Bool):Void
```

Redraws everything.

### refreshGrid

```haxe
function refreshGrid():Void
```

Redraws the grid.

### refreshTimeline

```haxe
function refreshTimeline(?currentTime:Float):Void
```

Redraws the time marker, at `currentTime` if set.

### refreshOverlay

```haxe
function refreshOverlay(?duration:Float):Void
```

Redraws the overlay, with a new duration if set.

### refreshGraph

```haxe
function refreshGraph(?anim:Bool = false, ?animKey:Null<CurveKey>, ?lowQuality:Bool = false):Void
```

Redraws the curves and keys.

### redrawCurves

```haxe
function redrawCurves(?lowQuality:Bool = false):Void
```

Redraws the curve lines.

### onSelectionEnd

```haxe
function onSelectionEnd(minT:Float, minV:Float, maxT:Float, maxV:Float):Void
```

Forwards the end of a rectangle selection to the components.

### setComponentsPan

```haxe
function setComponentsPan():Void
```

Applies the pan to the components.

### refreshComponents

```haxe
function refreshComponents(?anim:Bool = false):Void
```

Redraws the components.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
