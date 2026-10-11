# hide.comp.cdb.SubTable

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/SubTable.hx`](../../../../../../hide_js/hide/comp/cdb/SubTable.hx) · available on editor (js)

Extends: [`hide.comp.cdb.Table`](Table.md) → [`hide.comp.Component`](../Component.md)

Subclasses: [`hide.comp.cdb.ScriptTable`](ScriptTable.md)

The table of a list, properties or polymorphic cell, shown under its line.

## Constructor

### new

```haxe
function new(editor:Editor, cell:Cell):Void
```

Creates the sub table of a cell.

## Variables

### cell

```haxe
var cell:Cell
```

The cell of the sub table.

### polyVal

```haxe
var polyVal(default, null):{ obj:Dynamic, col:cdb.Column }
```

The column and object of the variant of a polymorphic cell.
Null for simple variants and the empty-poly picker, so getRealSheet() stays stable across edits.

## Methods

### getRealSheet

```haxe
override function getRealSheet():Null<cdb.Sheet>
```

### refresh

```haxe
override function refresh():Void
```

### show

```haxe
function show(?immediate:Bool):Void
```

Shows the sub table, with an animation unless `immediate`.

### close

```haxe
override function close():Void
```

### immediateClose

```haxe
function immediateClose():Void
```

Removes the sub table without animation.

### dispose

```haxe
override function dispose():Void
```

### refreshLinesStatus

```haxe
override function refreshLinesStatus():Void
```

## Inherited members

- from [`hide.comp.cdb.Table`](Table.md): `editor`, `parent`, `sheet`, `lines`, `displayMode`, `columns`, `view`, `nestedIndex`, `errorCount`, `errors`, `warningCount`, `warnings`, `setCursor`, `getRealSheet`, `canInsert`, `canEditColumn`, `close`, `dispose`, `refresh`, `revealLine`, `getScope`, `makeId`, `shouldDisplayProp`, `sortBy`, `toggleList`, `refreshList`, `insertLine`, `moveLines`, `moveLinesTo`, `duplicateLine`, `refreshLinesStatus`
- from [`hide.comp.Component`](../Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
