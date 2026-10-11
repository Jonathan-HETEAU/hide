# hide.kit.KitRoot

**class** · package [`hide.kit`](README.md) · source [`hide/kit/KitRoot.hx`](../../../../../hide/kit/KitRoot.hx) · available on editor (js)

Extends: [`hide.kit.Element`](Element.md)

The root of the properties of a prefab, with copy and paste of the values.

## Constructor

### new

```haxe
function new(parent:Element, id:String, prefab:hrt.prefab.Prefab, editor:hrt.prefab.EditContext2):Void
```

Creates the root of the properties of a prefab.

## Variables

### editedPrefabsProperties

```haxe
var editedPrefabsProperties:Array<KitRoot>
```

The roots of all the edited prefabs, when editing several prefabs.

### editor

```haxe
var editor(default, null):hrt.prefab.EditContext2
```

The edit context.

### isMultiEdit

```haxe
var isMultiEdit(default, null):Bool
```

Tells if several prefabs are edited.

## Methods

### getElementByPath

```haxe
function getElementByPath(path:String):Element
```

Returns the element of a path of ids separated by `.`, or `null`.

### doTry

```haxe
dynamic function doTry(cb:() -> Void):Void
```

Execute the given callback. Allows editors to try to throw in the cb in a graceful manner

### postEditStep

```haxe
function postEditStep():Void
```

Adds the CastleDB properties.

## Inherited members

- from [`hide.kit.Element`](Element.md): `singleEdit`, `disabled`, `width`, `tooltip`, `id`, `numChildren`, `getChildren`, `make`, `getIdPath`, `getById`, `refreshFields`, `collapse`, `getOrMakeLine`, `buildPropsList`, `buildProp`, `remove`
