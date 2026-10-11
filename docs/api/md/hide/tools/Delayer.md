# hide.tools.Delayer

**class** · package [`hide.tools`](README.md) · source [`hide_js/hide/tools/Delayer.hx`](../../../../../hide_js/hide/tools/Delayer.hx) · available on editor (js)

Type parameters: `<Item>`

Calls a function once per queued item on the next animation frame, ignoring duplicates.

## Constructor

### new

```haxe
function new(callback:() -> Void):Void
```

Creates a delayer calling `callback`.

## Methods

### queue

```haxe
function queue(item:hide.tools.Delayer.Item):Void
```

Queues an item.
