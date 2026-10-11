# hide.comp.FancyGallery

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/FancyGallery.hx`](../../../../../hide_js/hide/comp/FancyGallery.hx) · available on editor (js)

Type parameters: `<GalleryItem>`

Extends: [`hide.comp.Component`](Component.md)

A virtualized grid of item thumbnails with zoom levels, selection, renaming and drag and drop.
The items are given by the `getItems`, `getName` and `getThumbnail` callbacks.

## Constructor

### new

```haxe
function new(parent:hide.Element, el:hide.Element):Void
```

Creates a gallery in a `fancy-gallery` element (or a new one).

## Variables

### dragAndDropInterface

```haxe
var dragAndDropInterface:{ onDragStart:(item:hide.comp.FancyGallery.GalleryItem, dataTransfer:hide.tools.DragData) -> Bool }
```

Drag and drop interface.
Set this struct with all of it's function callback to handle drag and drop inside your tree.

## Methods

### setZoom

```haxe
function setZoom(newLevel:Int):Void
```

Sets the zoom level (index of the thumbnail sizes).

### queueRefresh

```haxe
function queueRefresh(?flag:GalleryRefreshFlag):Void
```

Refreshes the gallery on the next frame, with a flag.

### getItems

```haxe
dynamic function getItems():Array<hide.comp.FancyGallery.GalleryItem>
```

Returns the items. Default is none.

### getItemRanges

```haxe
dynamic function getItemRanges(item:hide.comp.FancyGallery.GalleryItem):SearchRanges
```

Returns the ranges of the name of an item to highlight.

### getName

```haxe
dynamic function getName(item:hide.comp.FancyGallery.GalleryItem):String
```

Returns the name of an item.

### getTitle

```haxe
dynamic function getTitle(item:hide.comp.FancyGallery.GalleryItem):String
```

Returns the tooltip of an item (its name by default).

### getThumbnail

```haxe
dynamic function getThumbnail(item:hide.comp.FancyGallery.GalleryItem):String
```

Returns the thumbnail URL of an item, or null.

### getIcon

```haxe
dynamic function getIcon(item:hide.comp.FancyGallery.GalleryItem):String
```

Returns the HTML of the icon of an item, or null.

### onDoubleClick

```haxe
dynamic function onDoubleClick(item:hide.comp.FancyGallery.GalleryItem):Void
```

Called when an item is double clicked.

### onKeyPress

```haxe
dynamic function onKeyPress(event:js.html.KeyboardEvent):Bool
```

Custom keyboard handler, register your shortcuts here

### visibilityChanged

```haxe
dynamic function visibilityChanged(item:hide.comp.FancyGallery.GalleryItem, isVisible:Bool):Void
```

Called when an item becomes visible on screen due to scrolling or other things.

### onContextMenu

```haxe
dynamic function onContextMenu(item:hide.comp.FancyGallery.GalleryItem, event:js.html.MouseEvent):Void
```

Called when the user right click an item (or the background) of the gallery.
`item` will be null if the background was clicked. Default is do nothing

### rebuild

```haxe
function rebuild():Void
```

Called when the user starts a drag and drop operation on `item`.
Fill dataTransfer with the information you want to transfer, you can use getSelectedItems to handle dragging more than
one item at a time.
Return `true` if the drag operation is allowed, and `false` to cancel it

### clearSelection

```haxe
function clearSelection():Void
```

Clears the selection.

### getSelectedItems

```haxe
function getSelectedItems():Array<hide.comp.FancyGallery.GalleryItem>
```

Returns the selected items.

### selectItem

```haxe
function selectItem(item:hide.comp.FancyGallery.GalleryItem):Void
```

Selects an item.

### rename

```haxe
function rename(item:hide.comp.FancyGallery.GalleryItem, onFinished:(newName:String) -> Void):Void
```

Starts renaming an item. `onFinished` is called with the new name.

### refreshThumbnail

```haxe
function refreshThumbnail(item:hide.comp.FancyGallery.GalleryItem):Void
```

Refreshes the thumbnail of an item.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
