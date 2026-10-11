# hide.comp.OverviewEditor

**class** · package [`hide.comp`](README.md) · module `hide.comp.CurveEditor` · source [`hide_js/hide/comp/CurveEditor.hx`](../../../../../hide_js/hide/comp/CurveEditor.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Implements: [`hide.comp.CurveEditorComponent`](CurveEditorComponent.md)

The overview of the keys of all the curves, above the curve editor.

## Constructor

### new

```haxe
function new(?parent:hide.Element, curveEditor:CurveEditor):Void
```

Creates the overview and adds it to the components of `curveEditor`.

## Variables

### curveEditor

```haxe
var curveEditor:CurveEditor
```

The curve editor.

## Methods

### setPan

```haxe
function setPan():Void
```

Applies the pan of the curve editor.

### refresh

```haxe
function refresh(?anim:Bool = false):Void
```

Redraws the overview.

### addKey

```haxe
function addKey(time:Float):Void
```

Adds a key at a time on the selected curves (or the only curve).

### onSelectionEnd

```haxe
function onSelectionEnd(minT:Float, minV:Float, maxT:Float, MaxV:Float):Void
```

Does nothing.

### beforeChange

```haxe
function beforeChange():Void
```

Does nothing.

### afterChange

```haxe
function afterChange():Void
```

Does nothing.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
