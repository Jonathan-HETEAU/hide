# Package `hide.tools`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`ArrayExtensions`](ArrayExtensions.md) | class | Static extensions of arrays, used with `using hide.tools.Extensions`. |
| [`ArrayExtensions_append_hrt_ui_MenuItem`](ArrayExtensions_append_hrt_ui_MenuItem.md) | class |  |
| [`ArrayExtensions_bubbleSort_sortAsc_T`](ArrayExtensions_bubbleSort_sortAsc_T.md) | class |  |
| [`ArrayExtensions_bubbleSort_sortDesc_T`](ArrayExtensions_bubbleSort_sortDesc_T.md) | class |  |
| [`ArrayExtensions_pickWeightIndex_pickWeight_T`](ArrayExtensions_pickWeightIndex_pickWeight_T.md) | class |  |
| [`CachedShader`](CachedShader.md) | typedef | A shader loaded by the `ShaderLoader`. |
| [`CdbAccess`](CdbAccess.md) | class | Typed access to the lines of a CastleDB sheet, by id. |
| [`Delayer`](Delayer.md) | class | Calls a function once per queued item on the next animation frame, ignoring duplicates. |
| [`DragAndDrop`](DragAndDrop.md) | class | Drag and drop between HTML elements of the editor, with a thumbnail and native drops support. |
| [`DragData`](DragData.md) | class | The state of a drag and drop operation. |
| [`DragElement`](DragElement.md) | class | An element registered as draggable. |
| [`DragEvent`](DragEvent.md) | enum | An event sent to a draggable element. |
| [`DropEvent`](DropEvent.md) | enum | An event sent to a drop target. |
| [`DropTarget`](DropTarget.md) | class | An element registered as a drop target. |
| [`DropTargetValidity`](DropTargetValidity.md) | enum | Tells if the hovered drop target accepts the drag. |
| [`Extensions`](Extensions.md) | class | Static extensions of points, vectors, matrices, maps and arrays, used with `using hide.tools.Extensions`. |
| [`FileEntry`](FileEntry.md) | class | A file or directory of the project resources, kept up to date by the `FileManager`. |
| [`FileKind`](FileKind.md) | enum | The kind of a file entry. |
| [`FileManager`](FileManager.md) | class | Class that handle parsing and maintaining the state of the project files, and generate miniatures for them on demand |
| [`FileWatchEvent`](FileWatchEvent.md) | typedef | A watch of a file. |
| [`FileWatcher`](FileWatcher.md) | class | Watches files and calls functions when they change. |
| [`GenToManagerCommand`](GenToManagerCommand.md) | enum abstract | A message from the thumbnail generator to the file manager. |
| [`GenToManagerSuccessMessage`](GenToManagerSuccessMessage.md) | typedef | The message sent when a thumbnail was rendered. |
| [`IdeData`](IdeData.md) | class | The data of the editor shared by the JS and HL editors: project paths, configurations, database and files. |
| [`Macros`](Macros.md) | class | Macros of the editor tools. |
| [`ManagerToGenCommand`](ManagerToGenCommand.md) | enum abstract | A message from the file manager to the thumbnail generator. |
| [`MemDump`](MemDump.md) | class | GPU memory dump. |
| [`MessageHandler`](MessageHandler.md) | class | Handle recieving messages separated by `\n` characters by a socket, correctly buffering the data |
| [`MiniatureReadyCallback`](MiniatureReadyCallback.md) | typedef | Called with the path of a rendered thumbnail. |
| [`OnDragEventResult`](OnDragEventResult.md) | enum | The result of a drag event. |
| [`RenderInfo`](RenderInfo.md) | typedef | A thumbnail to render. |
| [`RenderWindowManager`](RenderWindowManager.md) | class | Opens the hidden window rendering the thumbnails. |
| [`RenderWindowState`](RenderWindowState.md) | enum | The state of the thumbnail generator window. |
| [`ShaderLoader`](ShaderLoader.md) | class | Loads and compiles HXSL shaders from their source files (in the `haxe.classPath` of the configuration), reloaded when they change. |
| [`ThumbnailGenerator`](ThumbnailGenerator.md) | class | Renders the file thumbnails in a hidden window, on requests from the `FileManager` through a socket. |
| [`VCSStatus`](VCSStatus.md) | enum | The version control status of a file. |
