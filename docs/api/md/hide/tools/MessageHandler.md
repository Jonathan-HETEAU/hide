# hide.tools.MessageHandler

**class** · package [`hide.tools`](README.md) · module `hide.tools.ThumbnailGenerator` · source [`hide_js/hide/tools/ThumbnailGenerator.hx`](../../../../../hide_js/hide/tools/ThumbnailGenerator.hx) · available on editor (js)

Handle recieving messages separated by `\n` characters by a socket, correctly buffering the data

## Constructor

### new

```haxe
function new(socket:hxd.net.Socket, callback:(content:String) -> Void):Void
```

Creates the handler of a socket. `callback` is called with each message.
