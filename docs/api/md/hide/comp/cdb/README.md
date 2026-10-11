# Package `hide.comp.cdb`

[← API index](../../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Cell`](Cell.md) | class | A cell of a CDB table: displays and edits the value of a column of a line. |
| [`Cursor`](Cursor.md) | class | The cursor and selection of a CDB editor, with the history of the positions. |
| [`CursorState`](CursorState.md) | typedef | A saved cursor position. |
| [`DataFiles`](DataFiles.md) | class | The CastleDB sheets whose lines come from prefab files (`dataFiles` sheet property). |
| [`DataProps`](DataProps.md) | typedef | Where a line of a CastleDB sheet with data files comes from. |
| [`Direction`](Direction.md) | enum | A horizontal direction. |
| [`DisplayMode`](DisplayMode.md) | enum | How a CDB table is displayed. |
| [`Editor`](Editor.md) | class | The CastleDB editor component: shows and edits a sheet of the database, with cursor, undo, clipboard, search and filters. |
| [`EditorApi`](EditorApi.md) | typedef | The data access of a CDB editor. |
| [`EditorColumnProps`](EditorColumnProps.md) | typedef | The editor properties of a CDB column. |
| [`EditorSheetProps`](EditorSheetProps.md) | typedef | The editor properties of a CDB sheet. |
| [`FilterFlag`](FilterFlag.md) | enum | A kind of line shown by the editor filters. |
| [`FilterFlags`](FilterFlags.md) | typedef | A set of `FilterFlag`. |
| [`Formula`](Formula.md) | typedef | A CDB formula: a function of the formulas file computing a number column from a line. |
| [`Formulas`](Formulas.md) | class | The formulas of a CDB editor, loaded from the `cdb.formulasFile` hscript file. |
| [`FormulasView`](FormulasView.md) | class | The script view of the formulas file, with the sheet types for the checker. |
| [`Line`](Line.md) | class | A line of a CDB table. |
| [`ModalColumnForm`](ModalColumnForm.md) | class | The form creating or editing a CDB column. |
| [`ObjEditor`](ObjEditor.md) | class | A CDB editor of one object (all its properties) of a sheet type, stored in a file. |
| [`OptionalBackup`](OptionalBackup.md) | typedef | The empty optional values removed by `Editor.cleanupOptionalLines`, to restore them. |
| [`ScriptTable`](ScriptTable.md) | class | The sub table of a script cell: a script editor. |
| [`Selection`](Selection.md) | typedef | A rectangle of selected cells. |
| [`Separator`](Separator.md) | class | A separator of a CDB table: a collapsible titled group of lines, which can be nested. |
| [`SheetAccess`](SheetAccess.md) | class | The access to a sheet given to the formulas, as a global named after the sheet type. |
| [`SubTable`](SubTable.md) | class | The table of a list, properties or polymorphic cell, shown under its line. |
| [`Table`](Table.md) | class | A table of a CDB editor, showing the lines of a sheet. |
| [`UndoSheet`](UndoSheet.md) | typedef | A sheet shown in the editor, as stored in the undo state. |
| [`UndoState`](UndoState.md) | typedef | A state of the editor saved in the undo history. |
| [`ValidationFunction`](ValidationFunction.md) | typedef | A line validation function of the formulas file: a function whose name starts with `validate`. |
| [`ValidationResult`](ValidationResult.md) | enum | The result of a line validation function. |
