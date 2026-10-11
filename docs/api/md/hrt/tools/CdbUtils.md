# hrt.tools.CdbUtils

**class** · package [`hrt.tools`](README.md) · source [`hrt/tools/CdbUtils.hx`](../../../../../hrt/tools/CdbUtils.hx)

CastleDB helpers.

## Static methods

### splitPath

```haxe
static function splitPath(rs:cdb.Reference):{ pathParts:Array<PathPart>, pathNames:Array<String> }
```

Returns the readable path (ids or columns with indexes) and the coordinates of a reference.
