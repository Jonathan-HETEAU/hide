# hide.view.MemProfilerInspectView

**class** · package [`hide.view`](README.md) · module `hide.view.MemProfiler` · source [`hide_js/hide/view/MemProfiler.hx`](../../../../../hide_js/hide/view/MemProfiler.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../comp/Component.md)

The inspect tab of the memory profiler: the parents and roots of the blocks of a type.

## Constructor

### new

```haxe
function new(profiler:MemProfiler):Void
```

Creates the summary of a profiler.

## Variables

### ttype

```haxe
var ttype:hlmem.TType
```

The inspected type.

### ttypeName

```haxe
var ttypeName:String
```

The name of the inspected type.

## Methods

### open

```haxe
function open(?tstr:String):Void
```

Inspects a type, by name.

## Inherited members

- from [`hide.comp.Component`](../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
