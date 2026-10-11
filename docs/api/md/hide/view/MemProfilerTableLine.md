# hide.view.MemProfilerTableLine

**class** · package [`hide.view`](README.md) · module `hide.view.MemProfiler` · source [`hide_js/hide/view/MemProfiler.hx`](../../../../../hide_js/hide/view/MemProfiler.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../comp/Component.md)

A line of a memory profiler table.

## Constructor

### new

```haxe
function new(profiler:MemProfiler, el:hlmem.BlockStatsElement):Void
```

Creates the line of a statistic.

## Methods

### addAction

```haxe
function addAction(icon:String, description:String, onClick:() -> Void):Void
```

Adds an action button to the line.

## Inherited members

- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
