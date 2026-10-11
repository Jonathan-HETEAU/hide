# hide.ui.Keys

**class** · package [`hide.ui`](README.md) · source [`hide_js/hide/ui/Keys.hx`](../../../../../hide_js/hide/ui/Keys.hx) · available on editor (js)

The keyboard shortcuts of an element: actions registered by name, triggered by the `key.<name>` config entries.

## Constructor

### new

```haxe
function new(parent:hide.Element):Void
```

Creates the shortcuts of an element.

## Static methods

### matchJsEvent

```haxe
static function matchJsEvent(shortcutName:String, event:js.html.KeyboardEvent, config:hide.Config):Bool
```

Tells if a key event matches the shortcut of the `key.<shortcutName>` config entry.

### get

```haxe
static function get(e:hide.Element):Keys
```

Returns the shortcuts of an element, or null.

## Methods

### pushDisable

```haxe
function pushDisable():Void
```

Disables the shortcuts until `popDisable`.

### popDisable

```haxe
function popDisable():Void
```

Ends a `pushDisable`.

### remove

```haxe
function remove():Void
```

Detaches the shortcuts from their element.

### clear

```haxe
function clear():Void
```

Removes all the actions and listeners.

### addListener

```haxe
function addListener(l:() -> Bool):Void
```

Adds a function called with each key event before the actions. Returns true to stop the event.

### processEvent

```haxe
function processEvent(e:hide.Event, config:hide.Config):Bool
```

Triggers the action of a key event. Returns true if handled.

### triggerKey

```haxe
function triggerKey(e:hide.Event, key:String, config:hide.Config):Bool
```

Triggers the action whose shortcut is `key` (like `Ctrl-S`). Returns true if handled.

### register

```haxe
function register(name:String, ?doc:Null<EntryDoc>, callb:() -> Void):Void
```

Registers an action, triggered by the `key.<name>` config entry.

### sortDocCategories

```haxe
function sortDocCategories(config:hide.Config):Map<String, Array<{ shortcut:String, name:String }>>
```

Returns the shortcuts by category, for the shortcuts list.
