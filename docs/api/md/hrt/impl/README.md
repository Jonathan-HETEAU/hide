# Package `hrt.impl`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`BuildTools`](BuildTools.md) | class | Builds the resources of a project. |
| [`Color`](Color.md) | class | A color with 8 bits components. |
| [`ColorMode`](ColorMode.md) | typedef | A color space, with its conversions. |
| [`ColorSpace`](ColorSpace.md) | class | Conversions between 8 bits RGB colors (`iRGB`) and other color spaces, stored in `h3d.Vector4`. |
| [`ColorStop`](ColorStop.md) | typedef | A color stop of a gradient. |
| [`Editor2DIcon`](Editor2DIcon.md) | class | A 2D icon following an object in the editor, drawn over the scene. |
| [`EditorCacheData`](EditorCacheData.md) | typedef | A cached gradient texture of the editor. |
| [`EditorIcon`](EditorIcon.md) | class | A 3D icon of an object in the editor, facing the camera, with no rotation or scale. |
| [`EditorTools`](EditorTools.md) | class | Helpers for the editor icons (editor only). |
| [`Gradient`](Gradient.md) | class | A color gradient, as stops interpolated in a color space, rendered to textures (cached). |
| [`GradientData`](GradientData.md) | typedef | The data of a gradient. |
| [`GradientInterpolation`](GradientInterpolation.md) | enum abstract | The interpolation between the stops of a gradient. |
| [`IconCategory`](IconCategory.md) | enum | A category of editor icons. |
| [`Macros`](Macros.md) | class | Macros and helpers for the serialization of enums. |
| [`RemoteConsole`](RemoteConsole.md) | class | A simple socket-based local communication channel (plaintext and unsafe), aim at communicate between 2 programs (e.g. |
| [`RemoteConsoleConnection`](RemoteConsoleConnection.md) | class | A connection of a `RemoteConsole`. |
| [`RemoteMenuAction`](RemoteMenuAction.md) | typedef | An entry of the editor menus registered by the game. |
| [`RemotePrefabAction`](RemotePrefabAction.md) | typedef | A message of the remote prefab edition. |
| [`RemotePrefabActionKind`](RemotePrefabActionKind.md) | enum abstract | The kind of a remote prefab message. |
| [`RemotePrefabCallback`](RemotePrefabCallback.md) | typedef | Called with the new data of a prefab edited remotely. |
| [`RemoteTools`](RemoteTools.md) | class | A helper class to use a RemoteConsole in game. |
| [`TextureType`](TextureType.md) | enum abstract | The type of a texture value of a prefab property. |
| [`Utils`](Utils.md) | class | Helpers for the texture values of prefab properties: a path, or a gradient. |
