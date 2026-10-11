# hide.tools.DragData

**class** · package [`hide.tools`](README.md) · module `hide.tools.DragAndDrop` · source [`hide_js/hide/tools/DragAndDrop.hx`](../../../../../hide_js/hide/tools/DragAndDrop.hx) · available on editor (js)

The state of a drag and drop operation.

## Variables

### mouseX

```haxe
var mouseX:Int
```

The mouse X position in the window.

### mouseY

```haxe
var mouseY:Int
```

The mouse Y position in the window.

### shiftKey

```haxe
var shiftKey:Bool
```

Whenever the shiftKey is being held down

### data

```haxe
var data:Map<String, Dynamic>
```

Custom data for the drag and drop operation. Set it up in the onDrag event handler, and read it in the onDropEvent

### sourceElement

```haxe
var sourceElement:DragElement
```

The dragged element.

### dropTargetValidity

```haxe
var dropTargetValidity:DropTargetValidity
```

Allow to feedback to the user if the current drag operation has a valid target or no. Defaults to AllowDrop each time onDropEvent is called, so you'll need to set it to ForbidDrop if you want to prevent the operation each time

## Methods

### setThumbnail

```haxe
function setThumbnail(element:js.html.Element):Void
```

Shows a copy of an element under the cursor during the drag.

### setThumbnailVisiblity

```haxe
function setThumbnailVisiblity(visible:Bool):Void
```

Shows or hides the drag thumbnail.

### cancel

```haxe
function cancel():Void
```

Cancel the drag operation. Only valid when called by the onDrag callback of makeDraggable
