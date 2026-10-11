# hide.view.MemProfiler

**class** · package [`hide.view`](README.md) · source [`hide_js/hide/view/MemProfiler.hx`](../../../../../hide_js/hide/view/MemProfiler.hx) · available on editor (js)

Extends: [`hide.ui.View`](../ui/View.md) → [`hide.comp.Component`](../comp/Component.md)

The HashLink memory profiler view: loads a `.hl` file and memory dumps, and shows the memory used by type, with their parents and roots.

## Constructor

### new

```haxe
function new(?state:{  }):Void
```

Creates the view.

## Variables

### analyzer

```haxe
var analyzer:hlmem.Analyzer
```

The memory analyzer, or null before processing.

### hlPath

```haxe
var hlPath(default, set):String
```

The path of the `.hl` file.

### dumpPaths

```haxe
var dumpPaths(default, set):Array<String>
```

The paths of the memory dumps.

### defaultTableLines

```haxe
var defaultTableLines:Int
```

The number of lines shown in the tables before expanding.

### defaultLocateRoot

```haxe
var defaultLocateRoot:Bool
```

Locates the roots of the inspected type when it is opened.

### showTid

```haxe
var showTid:Bool
```

Shows the type ids.

## Methods

### onBeforeClose

```haxe
override function onBeforeClose():Bool
```

### getTitle

```haxe
override function getTitle():String
```

### process

```haxe
function process():Void
```

Loads the `.hl` file and the dumps, and shows the summary.

### addHistory

```haxe
function addHistory(str:String):Void
```

Adds a search to the history.

### openSummaryTab

```haxe
function openSummaryTab():Void
```

Shows the summary tab.

### getTypeStat

```haxe
function getTypeStat(ttype:hlmem.TType):hlmem.BlockStatsElement
```

Returns the summary statistics of a type.

### openInspectTab

```haxe
function openInspectTab(?tstr:String):Void
```

Shows the inspect tab, for a type if set.

### inspectRemoveParent

```haxe
function inspectRemoveParent(pstr:String):Void
```

Removes a parent type from the inspected blocks.

## Inherited members

- from [`hide.ui.View`](../ui/View.md): `fullScreen`, `keys`, `state`, `undo`, `config`, `viewClass`, `defaultOptions`, `watch`, `unwatch`, `getTitle`, `onBeforeClose`, `pushUndoStack`, `popUndoStack`, `setClipboard`, `hasClipboard`, `getClipboard`, `processKeyEvent`, `setContainer`, `rebuild`, `onResize`, `onDrag`, `onDragEnd`, `onDrop`, `isActive`, `onActivate`, `activate`, `close`
- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
