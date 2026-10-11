# hide.view.MemProfilerSearchBar

**class** · package [`hide.view`](README.md) · module `hide.view.MemProfiler` · source [`hide_js/hide/view/MemProfiler.hx`](../../../../../hide_js/hide/view/MemProfiler.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../comp/Component.md)

The type search bar of the memory profiler, with a history.

## Constructor

### new

```haxe
function new(profiler:MemProfiler):Void
```

Creates the inspect tab of a profiler.

## Variables

### searchHistory

```haxe
var searchHistory:Array<String>
```

The searches, latest first.

### searchHistoryIndex

```haxe
var searchHistoryIndex:Int
```

The index of the shown search.

## Methods

### refreshSearchBar

```haxe
function refreshSearchBar():Void
```

Shows the current search.

### addHistory

```haxe
function addHistory(str:String):Void
```

Adds a search to the history.

## Inherited members

- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
