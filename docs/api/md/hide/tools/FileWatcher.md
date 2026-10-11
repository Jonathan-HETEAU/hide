# hide.tools.FileWatcher

**class** · package [`hide.tools`](README.md) · source [`hide/tools/FileWatcher.hx`](../../../../../hide/tools/FileWatcher.hx) · available on editor (js)

Watches files and calls functions when they change.

## Constructor

### new

```haxe
function new():Void
```

Creates the watcher.

## Methods

### pause

```haxe
function pause():Void
```

Stops watching, remembering the content of the files.

### resume

```haxe
function resume():Void
```

Watches again, notifying the files changed while paused.

### ignorePrevChange

```haxe
function ignorePrevChange(f:FileWatchEvent):Void
```

Ignores the current change of the file (after the editor wrote it).

### dispose

```haxe
function dispose():Void
```

Stops all the watches.

### register

```haxe
function register(path:String, updateFun:() -> Void, ?checkDelete:Bool, ?element:Null<hide.Element>):FileWatchEvent
```

Calls `updateFun` when the file changes (and when deleted if `checkDelete`). The watch is removed when `element` leaves the document.

### registerRaw

```haxe
function registerRaw(path:String, updateFun:() -> Void, ?checkDelete:Bool, ?element:Null<hide.HTMLElement>):FileWatchEvent
```

Like `register`, with an HTML element.

### unregister

```haxe
function unregister(path:String, updateFun:() -> Void):Void
```

Removes a watch.

### unregisterElement

```haxe
function unregisterElement(element:hide.Element):Void
```

Removes the watches of an element.

### getVersion

```haxe
function getVersion(path:String):Int
```

Returns the number of changes of the file.

### isChangePending

```haxe
function isChangePending(f:FileWatchEvent):Bool
```

Tells if a change of the file is pending.
