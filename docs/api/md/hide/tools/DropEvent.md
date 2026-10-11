# hide.tools.DropEvent

**enum** · package [`hide.tools`](README.md) · module `hide.tools.DragAndDrop` · source [`hide_js/hide/tools/DragAndDrop.hx`](../../../../../hide_js/hide/tools/DragAndDrop.hx) · available on editor (js)

An event sent to a drop target.

## Constructors

### Move

```haxe
Move
```

Called when the cursor has moved over a registered drop target

### Enter

```haxe
Enter
```

Called when the cursor stared hovering a registered drop target. Use it to update the style of the drop target to show that
it can receive the drop for example.

### Leave

```haxe
Leave
```

Called when the cursor stopped hovering the previously entered drop target. This event is always called when the drop operation
ends (whenever it has been cancelled or processed). Use it to cleanup any style changes performed in the Move or Enter event for example.

### Drop

```haxe
Drop
```

Called when the users perform a drop action on a registered valid drop target. Not called if a previous onDropEvent set dropTargetValidity to ForbidDrop
