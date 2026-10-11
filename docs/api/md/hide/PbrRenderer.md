# hide.PbrRenderer

**class** · package [`hide`](README.md) · module `hide.Renderer` · source [`hide/Renderer.hx`](../../../../hide/Renderer.hx)

Extends: `h3d.scene.pbr.Renderer`

The PBR renderer of the editor: renders the `highlight` passes and the `ui` overlay pass.

## Constructor

### new

```haxe
function new(env:Null<h3d.scene.pbr.Environment>):Void
```

Creates the renderer with an environment.

## Methods

### getPassByName

```haxe
override function getPassByName(name:String):h3d.pass.Output
```

### getDefaultProps

```haxe
override function getDefaultProps(?kind:String):Any
```
