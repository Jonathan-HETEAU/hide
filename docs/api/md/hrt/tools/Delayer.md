# hrt.tools.Delayer

**class** · package [`hrt.tools`](README.md) · source [`hrt/tools/Delayer.hx`](../../../../../hrt/tools/Delayer.hx)

Type parameters: `<Item>`

A class that allow queueing operations on a given Item type and ensuring that only one `callback`
will be called on the given item per frame.

## Constructor

### new

```haxe
function new(callback:() -> Void):Void
```

Creates the delayer calling `callback`.

## Methods

### queue

```haxe
function queue(item:hrt.tools.Delayer.Item):Void
```

Queues an item: `callback` is called once for it on the next frame.
