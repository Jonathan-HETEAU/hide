# hide.view.animgraph.AnimList

**class** · package [`hide.view.animgraph`](README.md) · source [`hide_js/hide/view/animgraph/AnimList.hx`](../../../../../../hide_js/hide/view/animgraph/AnimList.hx) · available on editor (js)

Extends: [`hide.comp.Component`](../../comp/Component.md)

A filterable list of animation files, draggable to the graph.

## Constructor

### new

```haxe
function new(parent:hide.Element, el:hide.Element, paths:Array<String>):Void
```

Creates the list of animation paths.

## Static variables

### dragEventKey

```haxe
static final dragEventKey:String
```

The drag data key of the animation path.

## Methods

### refreshList

```haxe
function refreshList():Void
```

Rebuilds the list with the filter.

## Inherited members

- from [`hide.comp.Component`](../../comp/Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
