# Package `hide.tools`

[← retour](../DEPENDENCIES.md)

## hide.tools.AutoProfiler

- Fichier : `hide_hl/hide/tools/AutoProfiler.hx` — 85 lignes — 0 blocs doc
- Types : `class AutoProfiler`
- Utilisé par : `hide.App`

## hide.tools.CdbAccess

- Fichier : `hide/tools/CdbAccess.hx` — 83 lignes — 5 blocs doc — contient du `#if`
- Types : `class CdbAccess`
- Dépend de : `hide.Ide`

## hide.tools.Delayer

- Fichier : `hide_js/hide/tools/Delayer.hx` — 34 lignes — 3 blocs doc
- Types : `class Delayer`
- Utilisé par : `hide.tools.FileManager`

## hide.tools.DragAndDrop

- Fichier : `hide_js/hide/tools/DragAndDrop.hx` — 408 lignes — 31 blocs doc
- Types : `enum DragEvent`, `enum DropEvent`, `enum OnDragEventResult`, `enum DropTargetValidity`, `class DragData`, `class DropTarget`, `class DragElement`, `class DragAndDrop`
- Héritage : `DropTarget` extends `js.html.Element`, `DragElement` extends `js.html.Element`
- Dépend de : `hide.Ide`, `hide.tools.FileManager`
- Utilisé par : `hide.comp.FancyGallery`, `hide.comp.FancyTree`, `hide.comp.FileSelect`, `hide.comp.FileSelect2`, `hide.comp.SceneEditor`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.kit.Object3dRef`, `hide.view.CdbTable`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.shadereditor.ShaderEditor`

## hide.tools.Extensions

- Fichier : `hide_js/hide/tools/Extensions.hx` — 666 lignes — 53 blocs doc
- Types : `class ArrayExtensions`, `class Extensions`
- Utilisé par : `hide.comp.Dropdown`, `hide.comp.GlobalSeek`, `hide.comp.GradientEditor`, `hide.comp.SceneEditor`, `hide.comp.cdb.Cell`, `hide.comp.cdb.Editor`, `hide.comp.cdb.ModalColumnForm`, `hide.view.CdbTable`

## hide.tools.FileManager

- Fichier : `hide_js/hide/tools/FileManager.hx` — 1039 lignes — 61 blocs doc
- Types : `enum_abstract GenToManagerCommand`, `enum_abstract ManagerToGenCommand`, `typedef GenToManagerSuccessMessage`, `enum FileKind`, `enum VCSStatus`, `class FileEntry`, `typedef MiniatureReadyCallback`, `class FileManager`, `enum RenderWindowState`, `class RenderWindowManager`
- Dépend de : `hide.Ide`, `hide.tools.Delayer`, `hide.tools.FileWatcher`, `hide.tools.ThumbnailGenerator`
- Utilisé par : `hide.comp.FileSelect`, `hide.comp.FileSelect2`, `hide.comp.SceneEditor`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.tools.DragAndDrop`, `hide.tools.ThumbnailGenerator`, `hide.view.CdbTable`, `hide.view.animgraph.BlendSpace2DEditor`, `hide.view.shadereditor.ShaderEditor`, `hrt.shgraph.ShaderGraph`

## hide.tools.FileWatcher

- Fichier : `hide/tools/FileWatcher.hx` — 330 lignes — 18 blocs doc — contient du `#if`
- Types : `typedef FileWatchEvent`, `typedef Watch`, `class FileWatcher`
- Dépend de : `hide.Element`, `hide.Ide`
- Utilisé par : `hide.tools.FileManager`, `hide.tools.IdeData`, `hide.view.DomkitStudio`, `hide.view.shadereditor.ShaderEditor`

## hide.tools.GameLauncher

- Fichier : `hide_hl/hide/tools/GameLauncher.hx` — 265 lignes — 0 blocs doc
- Types : `enum State`, `typedef GameTarget`, `class GameLauncherProcess`, `class GameLauncher`
- Dépend de : `hide.Ide`
- Utilisé par : `hide.App`, `hrt.ui.HuiGameLauncherWidget`

## hide.tools.IdeData

- Fichier : `hide/tools/IdeData.hx` — 573 lignes — 35 blocs doc — contient du `#if`
- Types : `class IdeData`
- Dépend de : `hide.Config`, `hide.HideProjectConfig`, `hide.Ide`, `hide.comp.cdb.DataFiles`, `hide.comp.cdb.Editor`, `hide.tools.FileWatcher`, `hide.tools.ShaderLoader`, `hrt.prefab.Prefab`
- Utilisé par : `hide.Config`, `hide.Ide`, `hide.comp.FileSelect`, `hide.comp.FileSelect2`, `hide.comp.cdb.Cell`, `hide.view.FileView`, `hide.view.Model`, `hide.view.Prefab`, `hide.view.RemoteConsoleView`, `hide.view.Texture`, `hrt.ui.HuiFileBrowser`, `hrt.ui.HuiFilePicker`

## hide.tools.Macros

- Fichier : `hide/tools/Macros.hx` — 166 lignes — 1 blocs doc — contient du `#if`
- Types : `class Macros`
- Utilisé par : `hide.HlMacros`

## hide.tools.MemDump

- Fichier : `hide_js/hide/tools/MemDump.hx` — 46 lignes — 2 blocs doc
- Types : `class MemDump`

## hide.tools.Profiler

- Fichier : `hide_hl/hide/tools/Profiler.hx` — 28 lignes — 0 blocs doc
- Types : `class Profiler`
- Utilisé par : `hide.App`, `hrt.ui.HuiMainLayout`

## hide.tools.ShaderLoader

- Fichier : `hide/tools/ShaderLoader.hx` — 155 lignes — 10 blocs doc
- Types : `typedef CachedShader`, `class ShaderLoader`
- Dépend de : `hide.Ide`, `hrt.prefab.DynamicShader`
- Utilisé par : `hide.tools.IdeData`

## hide.tools.ThumbnailGenerator

- Fichier : `hide_js/hide/tools/ThumbnailGenerator.hx` — 586 lignes — 10 blocs doc
- Types : `typedef RenderInfo`, `class MessageHandler`, `class ThumbnailGenerator`
- Dépend de : `hide.Config`, `hide.Element`, `hide.Ide`, `hide.comp.Scene`, `hide.comp.ScenePreview`, `hide.prefab.ContextShared`, `hide.tools.FileManager`, `hide.view.GraphEditor`, `hrt.prefab.DynamicShader`, `hrt.prefab.Model`, `hrt.prefab.Prefab`, `hrt.prefab.fx.FX`, `hrt.tools.MapUtils`
- Utilisé par : `hide.tools.FileManager`
