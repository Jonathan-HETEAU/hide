# hide.comp.SVG

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/SVG.hx`](../../../../../hide_js/hide/comp/SVG.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

An SVG element component, with helpers creating its shapes.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?el:js.jquery.JQuery):Void
```

Creates an SVG element (or uses `el`).

## Methods

### clear

```haxe
function clear():Void
```

Removes all the shapes.

### add

```haxe
function add(el:hide.Element):Void
```

Adds an element.

### make

```haxe
function make(?parent:Null<hide.Element>, name:String, ?attr:Dynamic, ?style:Dynamic):js.jquery.JQuery
```

Creates an SVG element with attributes and style, in `parent` or the root.

### circle

```haxe
function circle(?parent:Null<hide.Element>, x:Float, y:Float, radius:Float, ?style:Dynamic):js.jquery.JQuery
```

Creates a circle.

### rect

```haxe
function rect(?parent:Null<hide.Element>, x:Float, y:Float, width:Float, height:Float, ?style:Dynamic):js.jquery.JQuery
```

Creates a rectangle.

### line

```haxe
function line(?parent:Null<hide.Element>, x1:Float, y1:Float, x2:Float, y2:Float, ?style:Dynamic):js.jquery.JQuery
```

Creates a line.

### curve

```haxe
function curve(?parent:Null<hide.Element>, x1:Float, y1:Float, x2:Float, y2:Float, xTurn:Float, yTurn:Float, ?style:Dynamic):js.jquery.JQuery
```

Creates a quadratic curve from (x1, y1) to (x2, y2) through a control point.

### straightCurve

```haxe
function straightCurve(?parent:Null<hide.Element>, x1:Float, y1:Float, x2:Float, y2:Float, advance:Float, round:Float, ?style:Dynamic):js.jquery.JQuery
```

Creates a path from (x1, y1) to (x2, y2) with horizontal ends of length `advance` and rounded corners.

### foreignObject

```haxe
function foreignObject(?parent:Null<hide.Element>, x:Float, y:Float, width:Float, height:Float, ?style:Dynamic):js.jquery.JQuery
```

Creates a foreign object, to hold HTML.

### polygon

```haxe
function polygon(?parent:Null<hide.Element>, points:Array<h2d.col.Point>, ?style:Dynamic):js.jquery.JQuery
```

Creates a closed path through points.

### polygon2

```haxe
function polygon2(?parent:Null<hide.Element>, points:Array<h2d.col.Point>, ?style:Dynamic):js.jquery.JQuery
```

Use the polygon element instead of path

### polylineRawArray

```haxe
function polylineRawArray(parent:hide.Element, points:Array<Float>, ?style:Dynamic):Void
```

Use an array with i * 2 being x and i * 2+1 being y for the points

### group

```haxe
function group(?parent:Null<hide.Element>, ?className:String, ?attr:Dynamic):js.jquery.JQuery
```

Creates a group, with a class name.

### text

```haxe
function text(?parent:Null<hide.Element>, x:Float, y:Float, text:String, ?style:Dynamic):js.jquery.JQuery
```

Creates a text.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
