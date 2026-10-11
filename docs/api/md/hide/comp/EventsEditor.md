# hide.comp.EventsEditor

**class** · package [`hide.comp`](README.md) · module `hide.comp.CurveEditor` · source [`hide_js/hide/comp/CurveEditor.hx`](../../../../../hide_js/hide/comp/CurveEditor.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

Implements: [`hide.comp.CurveEditorComponent`](CurveEditorComponent.md)

Shows and edits the FX events in the curve editor.

## Constructor

### new

```haxe
function new(?parent:hide.Element, fxEditor:hide.view.FXEditor, curveEditor:CurveEditor):Void
```

Creates the events editor and adds it to the components of `curveEditor`.

## Variables

### fxEditor

```haxe
var fxEditor:hide.view.FXEditor
```

The FX editor.

### curveEditor

```haxe
var curveEditor:CurveEditor
```

The curve editor.

### events

```haxe
var events:Array<hrt.prefab.fx.IEvent>
```

The edited events.

## Methods

### setPan

```haxe
function setPan():Void
```

Applies the pan of the curve editor.

### refreshOverview

```haxe
function refreshOverview():Void
```

Redraws the events.

### refresh

```haxe
function refresh(?anim:Bool = false):Void
```

Redraws the events.

### onSelectionEnd

```haxe
function onSelectionEnd(minT:Float, minV:Float, maxT:Float, maxV:Float):Void
```

Selects the events in the selected time range.

### beforeChange

```haxe
function beforeChange():Void
```

Saves the event times for the undo.

### afterChange

```haxe
function afterChange():Void
```

Records the event time change in the undo history.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
