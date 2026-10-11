# hide.view.GraphEditor

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/GraphEditor.hx`](../../../../../hide_js/hide/view/GraphEditor.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../comp/Component.md)

A generic node graph editor component, editing an `IGraphEditor` (shader graphs, texture graphs, animation graphs).

## Constructor

### new

```haxe
function new(config:hide.Config, editor:IGraphEditor, ?parent:Null<hide.Element>):Void
```

Creates the editor of a graph.

## Variables

### editor

```haxe
var editor:IGraphEditor
```

The edited graph.

### config

```haxe
var config:hide.Config
```

The config of the editor.

### previewsScene

```haxe
var previewsScene:hide.comp.Scene
```

The scene rendering the node previews, or null.

### currentUndoBuffer

```haxe
var currentUndoBuffer:UndoBuffer
```

The operations of the current undo step, recorded by `commitUndo`.

## Methods

### addUndo

```haxe
function addUndo(fn:UndoFn):Void
```

Applies an operation and adds it to the current undo step.

### commitUndo

```haxe
function commitUndo(?noDataChange:Bool = false):Void
```

Records the current operations as an undo step. `noDataChange` marks a step that doesn't change the saved data.

### execUndo

```haxe
function execUndo(buffer:UndoBuffer, isUndo:Bool):Void
```

Applies the operations of a buffer, or reverts them in reverse order if `isUndo`.

### onDisplay

```haxe
function onDisplay():Void
```

Builds the editor.

### createMiniPreviewScene

```haxe
function createMiniPreviewScene():Void
```

Creates the scene of the node previews.

### disposeMiniPreviewScene

```haxe
function disposeMiniPreviewScene():Void
```

Disposes the scene of the node previews.

### cancelAll

```haxe
function cancelAll():Void
```

Cancels the edge being created.

### reload

```haxe
function reload():Void
```

Rebuilds the editor on the next frame.

### onPreviewUpdate

```haxe
dynamic function onPreviewUpdate():Bool
```

If this function returns false, the preview update will be skipped

### onNodePreviewUpdate

```haxe
dynamic function onNodePreviewUpdate(node:IGraphNode, bitmap:h2d.Bitmap):Void
```

Called for each visible preview in the graph editor

### onSelectionChanged

```haxe
dynamic function onSelectionChanged(selectedNodes:Array<IGraphNode>):Void
```

Called when the selection changes.

### opResize

```haxe
function opResize(box:hide.view.shadereditor.Box, w:Float, h:Float, undoBuffer:UndoBuffer):Void
```

Resizes a comment node, adding the operation to `undoBuffer`.

### refreshPinColors

```haxe
function refreshPinColors():Void
```

Update the pins colors of all the boxes from their node info

### refreshBox

```haxe
function refreshBox(id:Int):Void
```

Rebuilds the box of a node.

### setSelection

```haxe
function setSelection(nodes:Array<IGraphNode>):Void
```

Selects nodes, as an undo step without data change.

### centerSelection

```haxe
function centerSelection():Void
```

Centers the view on the selected nodes, or on the graph.

### opPreview

```haxe
function opPreview(box:hide.view.shadereditor.Box, show:Bool, undoBuffer:UndoBuffer):Void
```

Shows or hides the preview of a node, adding the operation to `undoBuffer`.

### opBox

```haxe
function opBox(node:IGraphNode, doAdd:Bool, undoBuffer:UndoBuffer):Void
```

Adds or removes a node, adding the operation to `undoBuffer`. The edges of the node must be removed first.

### opComment

```haxe
function opComment(box:hide.view.shadereditor.Box, newComment:String, undoBuffer:UndoBuffer):Void
```

Changes the text of a comment node, adding the operation to `undoBuffer`.

### refreshPreviewButtons

```haxe
function refreshPreviewButtons():Void
```

Refreshes the preview buttons of the nodes.

### centerView

```haxe
function centerView():Void
```

Centers the view on the graph.

### saveView

```haxe
function saveView():String
```

Returns the view transform as JSON.

### loadView

```haxe
function loadView(saved:String):Void
```

Restores a view transform saved by `saveView`.

### gX

```haxe
function gX(x:Float):Float
```

Converts a graph X to a view X.

### gY

```haxe
function gY(y:Float):Float
```

Converts a graph Y to a view Y.

### gPos

```haxe
function gPos(x:Float, y:Float):h2d.col.Point
```

Converts a graph position to a view position.

### lX

```haxe
function lX(x:Float):Float
```

Converts a page X to a graph X.

### lY

```haxe
function lY(y:Float):Float
```

Converts a page Y to a graph Y.

### lPos

```haxe
function lPos(x:Float, y:Float):h2d.col.Point
```

Converts a page position to a graph position.

## Inherited members

- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
