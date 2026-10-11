# hide.comp.cdb.ObjEditor

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/ObjEditor.hx`](../../../../../../hide_js/hide/comp/cdb/ObjEditor.hx) · available on editor (js)

Extends: [`hide.comp.cdb.Editor`](Editor.md) → [`hide.comp.Component`](../Component.md)

A CDB editor of one object (all its properties) of a sheet type, stored in a file.

## Constructor

### new

```haxe
function new(sheet:cdb.Sheet, props:hide.Config, obj:{  }, fileReference:String, ?parent:hide.Element):Void
```

Creates the editor of an object.

## Variables

### fileView

```haxe
var fileView:hide.view.FileView
```

The view of the file, or null.

## Methods

### beginChanges

```haxe
override function beginChanges(?structure:Bool):Void
```

### endChanges

```haxe
override function endChanges():Void
```

### show

```haxe
override function show(sheet:cdb.Sheet, ?parent:hide.Element):Void
```

### syncSheet

```haxe
override function syncSheet(?base:cdb.Database, ?name:String):Void
```

### changeObject

```haxe
override function changeObject(line:Line, column:cdb.Column, value:Dynamic):Void
```

### onChange

```haxe
dynamic function onChange(propName:String):Void
```

Called with the name of a changed property.

## Inherited members

- from [`hide.comp.cdb.Editor`](Editor.md): `view`, `config`, `cursor`, `keys`, `undo`, `formulas`, `showGUIDs`, `gradientEditor`, `getCurrentSheet`, `show`, `onScriptCtrlS`, `updateFilters`, `changeObject`, `beginChanges`, `endChanges`, `saveSeparatorState`, `getCursorId`, `getReferences`, `findUnreferenced`, `showReferences`, `addToFavorites`, `syncSheet`, `refreshRefs`, `refresh`, `isColumnVisible`, `moveColumn`, `newColumn`, `editColumn`, `ensureUniqueId`, `doesSheetContainsId`, `getNewUniqueId`, `popupColumn`, `popupLine`, `createDBSheet`, `popupSheet`, `close`, `focus`
- from [`hide.comp.Component`](../Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
