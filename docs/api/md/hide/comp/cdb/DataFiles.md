# hide.comp.cdb.DataFiles

**class** · package [`hide.comp.cdb`](README.md) · source [`hide/comp/cdb/DataFiles.hx`](../../../../../../hide/comp/cdb/DataFiles.hx)

The CastleDB sheets whose lines come from prefab files (`dataFiles` sheet property).

## Static variables

### base _(runtime (hl) only)_

```haxe
static var base:cdb.Database
```

The database.

## Static methods

### load

```haxe
static function load():Void
```

Loads the lines of the sheets with data files.

### loadFile

```haxe
static function loadFile(file:String, sheet:cdb.Sheet):Void
```

Loads the lines of a sheet from a file.

### getPrefabsByPath

```haxe
static function getPrefabsByPath(prefab:hrt.prefab.Prefab, path:String):Array<hrt.prefab.Prefab>
```

Returns the prefabs at a path of names separated by `.` (`*` allowed).

### resolveCDBValue _(editor (js) only)_

```haxe
static function resolveCDBValue(path:String, key:Dynamic, obj:Dynamic):Dynamic
```

Returns the value of a key in an object, for a path (keys can be a list of choices).

### save _(editor (js) only)_

```haxe
static function save(?onSaveBase:() -> Void, ?force:Bool, ?prevSheetNames:Map<String, String>):Void
```

Saves the lines back to their files.

### getAvailableTypes _(editor (js) only)_

```haxe
static function getAvailableTypes():Array<cdb.Sheet>
```

Returns the sheets with data files.

### resolveType _(editor (js) only)_

```haxe
static function resolveType(name:String):Null<cdb.Sheet>
```

Returns the sheet with data files of a type name, or `null`.

### getTypeName

```haxe
static function getTypeName(sheet:cdb.Sheet):Null<String>
```

Returns the type name of a sheet (without the `@` prefix).
