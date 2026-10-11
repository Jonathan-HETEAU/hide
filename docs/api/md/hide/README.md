# Package `hide`

[← API index](../README.md)

Sub-packages: [`hide.comp`](comp/README.md), [`hide.kit`](kit/README.md), [`hide.prefab`](prefab/README.md), [`hide.tools`](tools/README.md), [`hide.ui`](ui/README.md), [`hide.view`](view/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Config`](Config.md) | class | A `props.json` configuration file, merged over its parent configuration. |
| [`ConfigDef`](ConfigDef.md) | typedef | The content of a `props.json` file. |
| [`CustomLoader`](CustomLoader.md) | class | A resource loader caching the resources in the engine resource cache. |
| [`Element`](Element.md) | typedef | A jQuery element (`Dynamic` on HashLink). |
| [`Event`](Event.md) | typedef | A jQuery event (`Dynamic` on HashLink). |
| [`Extension`](Extension.md) | class | The registry of the views opening each file extension. |
| [`ExtensionDesc`](ExtensionDesc.md) | typedef | A registered file extension. |
| [`ExtensionOptions`](ExtensionOptions.md) | typedef | The options of a file extension. |
| [`FilterPathContext`](FilterPathContext.md) | class | The context passed to the `Ide.filterPaths` callbacks, to change the file paths found in the project data. |
| [`HTMLElement`](HTMLElement.md) | typedef | An HTML element (`Dynamic` on HashLink). |
| [`HideGlobalConfig`](HideGlobalConfig.md) | typedef | The global settings of the editor, per user (the `hide` field of the global `props.json`). |
| [`HideProjectConfig`](HideProjectConfig.md) | typedef | The settings of the IDE for a project. |
| [`Ide`](Ide.md) | class | The HIDE editor application: project, windows, views, layout, menus, dialogs and clipboard. |
| [`IdeCache`](IdeCache.md) | class | A cache of the IDE stored in the engine resource cache. |
| [`LayoutState`](LayoutState.md) | typedef | A saved layout of the IDE. |
| [`MaterialSetup`](MaterialSetup.md) | class | The material setup of the editor (forward renderer). |
| [`MessageKind`](MessageKind.md) | enum | The kind of a message shown by `Ide.globalMessage`. |
| [`PbrRenderer`](PbrRenderer.md) | class | The PBR renderer of the editor: renders the `highlight` passes and the `ui` overlay pass. |
| [`PbrSetup`](PbrSetup.md) | class | The PBR material setup of the editor. |
| [`Renderer`](Renderer.md) | class | The forward renderer of the editor, with the editor passes. |
| [`ScreenOutline`](ScreenOutline.md) | class | Draws the outline of the highlighted objects. |
