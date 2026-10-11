# hide.tools.CdbAccess

**class** · package [`hide.tools`](README.md) · source [`hide/tools/CdbAccess.hx`](../../../../../hide/tools/CdbAccess.hx) · available on editor (js)

Type parameters: `<T, Kind>`

Typed access to the lines of a CastleDB sheet, by id.

## Constructor

### new

```haxe
function new(sheet:String):Void
```

Loads the lines of a sheet.

## Variables

### all

```haxe
var all(get, null):cdb.ArrayRead<hide.tools.CdbAccess.T>
```

All the lines.

## Methods

### get

```haxe
function get(kind:hide.tools.CdbAccess.Kind):hide.tools.CdbAccess.T
```

Returns the line of an id, or `null`.

### resolve

```haxe
function resolve(id:String, ?opt:Bool, ?approximate:Bool):hide.tools.CdbAccess.T
```

Returns the line of an id (or the shortest id starting with it if `approximate`). Throws if missing, unless `opt`.
