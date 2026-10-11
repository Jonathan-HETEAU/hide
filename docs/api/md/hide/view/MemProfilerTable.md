# hide.view.MemProfilerTable

**class** · package [`hide.view`](README.md) · module `hide.view.MemProfiler` · source [`hide_js/hide/view/MemProfiler.hx`](../../../../../hide_js/hide/view/MemProfiler.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../comp/Component.md)

A table of block statistics of the memory profiler.

## Constructor

### new

```haxe
function new(profiler:MemProfiler, title:String, data:hlmem.BlockStats, maxLine:Int, ?allowRemoveParent:Bool = false):Void
```

Creates a table showing `maxLine` lines. `allowRemoveParent` adds an action removing a parent.

## Methods

### expand

```haxe
function expand(size:Int):Void
```

Shows `size` more lines.

## Inherited members

- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
