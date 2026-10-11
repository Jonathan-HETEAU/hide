# Package `hrt.tools`

[← API index](../../README.md)

| Type | Kind | Summary |
|---|---|---|
| [`Action`](Action.md) | typedef | An action: applies it, or reverts it if `isUndo`. |
| [`CdbUtils`](CdbUtils.md) | class | CastleDB helpers. |
| [`ClassUtils`](ClassUtils.md) | class | Class hierarchy helpers. |
| [`Delayer`](Delayer.md) | class | A class that allow queueing operations on a given Item type and ensuring that only one `callback` will be called on the given item per frame. |
| [`EditMode`](EditMode.md) | enum | The mode of a `Gizmo`. |
| [`ForwardConfig`](ForwardConfig.md) | typedef | The options of `@:forwardDecls`. |
| [`ForwardDecls`](ForwardDecls.md) | interface | Runs `Macros.forward` on implementing classes. |
| [`GenToManagerCommand`](GenToManagerCommand.md) | enum abstract | A message of the thumbnail generator to the file manager. |
| [`GenToManagerSuccessMessage`](GenToManagerSuccessMessage.md) | typedef | A generated thumbnail. |
| [`Gizmo`](Gizmo.md) | class | A 3D gizmo to move, rotate and scale objects in the editor. |
| [`GraphicsTools`](GraphicsTools.md) | class | Static extension for h3d.scene.Graphics |
| [`Grid`](Grid.md) | class | An infinite-looking grid on the XY plane, for the editor. |
| [`GridShader`](GridShader.md) | class | Draws the lines of the grid, fading with the distance. |
| [`Handle`](Handle.md) | enum | A handle of a `Gizmo`. |
| [`Left`](Left.md) | typedef | The element of the one side of a `OneToMany`. |
| [`Macros`](Macros.md) | class | Build macros of the tools. |
| [`ManagerToGenCommand`](ManagerToGenCommand.md) | enum abstract | A message of the file manager to the thumbnail generator. |
| [`MapUtils`](MapUtils.md) | class | Map helpers. |
| [`MathUtils`](MathUtils.md) | class | Math helpers. |
| [`OneToMany`](OneToMany.md) | class | Represent a collection of One -> Many relationship, i.e Multiple `Right` elements can point to an unique `Left` element. |
| [`Path`](Path.md) | typedef | The path to a CastleDB cell. |
| [`PathPart`](PathPart.md) | enum | A part of the path to a CastleDB cell. |
| [`ProcessAsync`](ProcessAsync.md) | class | Run a process asynchronously, calling the given callback once the execution of the process has been completed |
| [`Right`](Right.md) | typedef | The element of the many side of a `OneToMany`. |
| [`RotateAxisShader`](RotateAxisShader.md) | class | Displays the rotation rings. |
| [`RotateSphereShader`](RotateSphereShader.md) | class | Displays the rotation sphere. |
| [`Undo`](Undo.md) | class | An undo history of actions. |
| [`ViewportAxis`](ViewportAxis.md) | class | Displays the orientation of the camera as axes in a corner of the view, clickable to align the camera. |
