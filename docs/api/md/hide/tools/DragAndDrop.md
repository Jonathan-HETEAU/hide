# hide.tools.DragAndDrop

**class** · package [`hide.tools`](README.md) · source [`hide_js/hide/tools/DragAndDrop.hx`](../../../../../hide_js/hide/tools/DragAndDrop.hx) · available on editor (js)

Drag and drop between HTML elements of the editor, with a thumbnail and native drops support.

## Static methods

### makeDraggable

```haxe
static function makeDraggable(element:js.html.Element, onDragEvent:(event:DragEvent, data:DragData) -> Void):Void
```

Makes an element draggable. `onDragEvent` is called when the drag starts and stops.

### makeDropTarget

```haxe
static function makeDropTarget(element:js.html.Element, onDropEvent:(event:DropEvent, data:DragData) -> Void):Void
```

Makes an element a drop target. `onDropEvent` is called when a drag moves over it, enters, leaves or drops.
