# Package `hide.ui`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`DisplayPosition`](DisplayPosition.md) | enum abstract | Where a view is opened in the layout. |
| [`Entry`](Entry.md) | typedef | A registered shortcut action. |
| [`EntryDoc`](EntryDoc.md) | typedef | The description of a shortcut, for the shortcuts list. |
| [`HistoryElement`](HistoryElement.md) | enum | A change recorded in an `UndoHistory`. |
| [`Keys`](Keys.md) | class | The keyboard shortcuts of an element: actions registered by name, triggered by the `key.<name>` config entries. |
| [`Menu`](Menu.md) | class | The native menu bar built from an HTML menu description. |
| [`QueryHelper`](QueryHelper.md) | class | A shortcut to create elements: `J(...)` is `new hide.Element(...)`. |
| [`UndoHistory`](UndoHistory.md) | class | The undo and redo history of a view. |
| [`View`](View.md) | class | The base class of the IDE views (tabs): state, config, keys, undo, clipboard, file watches and layout container. |
| [`ViewOptions`](ViewOptions.md) | typedef | The options of a view class, given to `View.register`. |
