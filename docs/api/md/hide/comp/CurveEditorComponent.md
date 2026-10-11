# hide.comp.CurveEditorComponent

**interface** · package [`hide.comp`](README.md) · module `hide.comp.CurveEditor` · source [`hide_js/hide/comp/CurveEditor.hx`](../../../../../hide_js/hide/comp/CurveEditor.hx) · available on editor (js)

Implemented by: [`hide.comp.EventsEditor`](EventsEditor.md), [`hide.comp.OverviewEditor`](OverviewEditor.md)

A component drawn over the curve editor (events, overview).

## Methods

### refresh

```haxe
function refresh(?anim:Bool = false):Void
```

Redraws the component.

### setPan

```haxe
function setPan():Void
```

Applies the pan of the curve editor.

### onSelectionEnd

```haxe
function onSelectionEnd(minT:Float, minV:Float, maxT:Float, MaxV:Float):Void
```

Called at the end of a rectangle selection, with the selected time and value range.

### beforeChange

```haxe
function beforeChange():Void
```

Called before the curves change, to save the undo state.

### afterChange

```haxe
function afterChange():Void
```

Called after the curves changed, to record the undo.
