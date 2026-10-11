# Package `hrt.impl`

[← retour](../DEPENDENCIES.md)

## hrt.impl.BuildTools

- Fichier : `hrt/impl/BuildTools.hx` — 82 lignes — 2 blocs doc — contient du `#if`
- Types : `class BuildTools`
- Utilisé par : `hrt.impl.RemoteConsole`

## hrt.impl.ColorSpace

- Fichier : `hrt/impl/ColorSpace.hx` — 449 lignes — 28 blocs doc
- Types : `typedef ColorMode`, `class Color`, `class ColorSpace`
- Utilisé par : `hide.comp.ColorPicker`, `hide.comp.GradientEditor`, `hide.kit.Color`, `hide.view.Prefab`, `hrt.impl.Gradient`, `hrt.prefab.fx.FX`, `hrt.prefab.rfx.VolumetricLighting`, `hrt.ui.HuiColorPicker`

## hrt.impl.EditorTools

- Fichier : `hrt/impl/EditorTools.hx` — 176 lignes — 20 blocs doc — contient du `#if`
- Types : `class EditorIcon`, `class Editor2DIcon`, `enum IconCategory`, `class EditorTools`
- Héritage : `EditorIcon` extends `hrt.prefab.l3d.Billboard.BillboardObj`, `Editor2DIcon` extends `h2d.ObjectFollower`
- Dépend de : `hide.Ide`, `hrt.prefab.l3d.Billboard` (extends/use)
- Utilisé par : `hide.comp.SceneEditor`, `hrt.prefab.Light`, `hrt.prefab.Object3D`, `hrt.prefab.l3d.Decal`, `hrt.prefab.l3d.Trails`

## hrt.impl.Gradient

- Fichier : `hrt/impl/Gradient.hx` — 358 lignes — 28 blocs doc — contient du `#if`
- Types : `typedef ColorStop`, `enum_abstract GradientInterpolation`, `typedef GradientData`, `typedef EditorCacheData`, `class Gradient`
- Dépend de : `hrt.impl.ColorSpace`
- Utilisé par : `hide.comp.GradientEditor`, `hide.comp.SceneEditor`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.kit.Gradient`, `hrt.impl.TextureType`, `hrt.prefab.Shader`, `hrt.prefab.fx.Emitter`, `hrt.prefab.fx.Emitter2D`, `hrt.prefab.l2d.Gradient`, `hrt.prefab.l3d.KitTest`, `hrt.ui.HuiGradientBox`, `hrt.ui.HuiGradientEditor`, `hrt.ui.HuiTextureChoice`

## hrt.impl.Macros

- Fichier : `hrt/impl/Macros.hx` — 311 lignes — 5 blocs doc — contient du `#if`
- Types : `class Macros`
- Dépend de : `hrt.prefab.Prefab`
- Utilisé par : `hrt.prefab.l3d.KitTest`

## hrt.impl.RemoteConsole

- Fichier : `hrt/impl/RemoteConsole.hx` — 806 lignes — 40 blocs doc — contient du `#if`
- Types : `typedef RemoteMenuAction`, `typedef RemotePrefabAction`, `enum_abstract RemotePrefabActionKind`, `class RemoteConsole`, `class RemoteConsoleConnection`
- Dépend de : `hide.Ide`, `hide.comp.SceneEditor`, `hide.view.CdbTable`, `hide.view.DomkitStudio`, `hide.view.FXEditor`, `hide.view.Model`, `hide.view.Prefab`, `hrt.impl.BuildTools`, `hrt.impl.RemoteTools`, `hrt.prefab.Prefab`
- Utilisé par : `hide.view.RemoteConsoleView`, `hrt.impl.RemoteTools`

## hrt.impl.RemoteTools

- Fichier : `hrt/impl/RemoteTools.hx` — 202 lignes — 14 blocs doc
- Types : `typedef RemotePrefabCallback`, `class RemoteTools`
- Dépend de : `hrt.impl.RemoteConsole`, `hrt.prefab.Prefab`
- Utilisé par : `hrt.impl.RemoteConsole`

## hrt.impl.TextureType

- Fichier : `hrt/impl/TextureType.hx` — 100 lignes — 8 blocs doc
- Types : `enum_abstract TextureType`, `class Utils`
- Dépend de : `hrt.impl.Gradient` (import/use)
- Utilisé par : `hide.comp.GradientEditor`, `hide.comp.PropsEditor`, `hide.comp.TextureChoice`, `hide.comp.TextureChoice2`, `hide.kit.Gradient`, `hide.kit.Texture`, `hrt.prefab.Shader`, `hrt.prefab.rfx.ScreenShaderGraph`, `hrt.shgraph.ShaderGraph`, `hrt.ui.HuiTextureChoice`
