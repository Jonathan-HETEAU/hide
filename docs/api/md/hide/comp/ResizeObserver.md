# hide.comp.ResizeObserver

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/ResizeObserver.hx`](../../../../../hide_js/hide/comp/ResizeObserver.hx) · available on editor (js)

The browser `ResizeObserver` API.

## Constructor

### new

```haxe
function new(callback:(entries:Array<Dynamic>, self:ResizeObserver) -> Void):Void
```

Creates an observer calling `callback` when the observed elements are resized.

## Methods

### disconnect

```haxe
function disconnect():Void
```

Unobserves all observed Element targets of a particular observer.

### observe

```haxe
function observe(element:js.html.Element):Void
```

Initiates the observing of a specified Element.

### unobserve

```haxe
function unobserve(target:js.html.Element):Void
```

Ends the observing of a specified Element.
