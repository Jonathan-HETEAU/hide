# hide.comp.cdb.ScriptTable

**class** · package [`hide.comp.cdb`](README.md) · source [`hide_js/hide/comp/cdb/ScriptTable.hx`](../../../../../../hide_js/hide/comp/cdb/ScriptTable.hx) · available on editor (js)

Extends: [`hide.comp.cdb.SubTable`](SubTable.md) → [`hide.comp.cdb.Table`](Table.md) → [`hide.comp.Component`](../Component.md)

The sub table of a script cell: a script editor.

## Constructor

### new

```haxe
function new(editor:Editor, cell:Cell):Void
```

## Methods

### close

```haxe
override function close():Void
```

### setCursor

```haxe
override function setCursor():Void
```

### refresh

```haxe
override function refresh():Void
```

## Inherited members

- from [`hide.comp.cdb.SubTable`](SubTable.md): `cell`, `polyVal`, `getRealSheet`, `refresh`, `show`, `close`, `immediateClose`, `dispose`, `refreshLinesStatus`
- from [`hide.comp.cdb.Table`](Table.md): `editor`, `parent`, `sheet`, `lines`, `displayMode`, `columns`, `view`, `nestedIndex`, `errorCount`, `errors`, `warningCount`, `warnings`, `setCursor`, `getRealSheet`, `canInsert`, `canEditColumn`, `close`, `dispose`, `refresh`, `revealLine`, `getScope`, `makeId`, `shouldDisplayProp`, `sortBy`, `toggleList`, `refreshList`, `insertLine`, `moveLines`, `moveLinesTo`, `duplicateLine`, `refreshLinesStatus`
- from [`hide.comp.Component`](../Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
