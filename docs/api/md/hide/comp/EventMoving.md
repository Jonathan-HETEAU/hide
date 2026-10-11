# hide.comp.EventMoving

**class** · package [`hide.comp`](README.md) · module `hide.comp.CurveEditor` · source [`hide_js/hide/comp/CurveEditor.hx`](../../../../../hide_js/hide/comp/CurveEditor.hx) · available on editor (js)

A drag of FX events in the curve editor.

## Constructor

### new

```haxe
function new(selectedEvents:Array<hrt.prefab.fx.IEvent>, refreshFns:Array<() -> Void>, startEvent:js.html.PointerEvent, mode:EventMoveMode, editor:EventsEditor):Void
```

Starts a drag of events.

## Methods

### update

```haxe
function update(event:js.html.PointerEvent):Void
```

Updates the events from the pointer position.

### end

```haxe
function end(event:js.html.PointerEvent):Void
```

Ends the drag and records the change in the undo history.
