# hide.view.CdbTable

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/CdbTable.hx`](../../../../../hide_js/hide/view/CdbTable.hx) · available on editor (js)

Extends: [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The CastleDB view: the sheets of the database in tabs, with categories.

## Constructor

### new

```haxe
function new(?state:{  }):Void
```

Creates the view.

## Methods

### goto2

```haxe
function goto2(rootSheet:cdb.Sheet, path:hrt.tools.Path):Void
```

Shows the line at a path in a sheet.

### goto

```haxe
function goto(s:cdb.Sheet, ?line:Int, ?column:Int, ?scriptLine:Int):Void
```

Shows a sheet, at a line and column if set.

### getSheets

```haxe
function getSheets():Array<cdb.Sheet>
```

Returns the shown sheets, in tab order.

### onActivate

```haxe
override function onActivate():Void
```

### applyProofing

```haxe
function applyProofing(?doRefresh:Bool = true):Void
```

Applies the proofreading mode (`dbProofread` project setting).

### applyCategories

```haxe
function applyCategories(displayedCats:Array<String>, ?doRefresh:Bool = true):Void
```

Marks the sheet tabs with their categories.

### getCellFromMousePos

```haxe
function getCellFromMousePos(x:Int, y:Int):Null<hide.comp.cdb.Cell>
```

Returns the cell at a position of the window, or null.

### getTitle

```haxe
override function getTitle():String
```

## Inherited members

- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
