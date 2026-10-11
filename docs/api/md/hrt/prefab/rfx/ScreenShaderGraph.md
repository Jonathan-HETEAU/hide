# hrt.prefab.rfx.ScreenShaderGraph

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/ScreenShaderGraph.hx`](../../../../../../hrt/prefab/rfx/ScreenShaderGraph.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A screen effect made with a shader graph (`source`). Its parameters are stored in `props`.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

Creates the prefab, child of `parent`, or root with the shared context `contextShared` (or a new one).

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### renderMode

```haxe
var renderMode:ScreenShaderGraphMode
```

When the effect is rendered.

### blend

```haxe
var blend:h3d.mat.PbrBlend
```

How the effect is blended.

### usePrevTarget

```haxe
var usePrevTarget:Bool
```

Renders into a new target, with the screen as the input of the graph.

### passBegin

```haxe
var passBegin:Bool
```

Renders at the beginning of the step instead of the end.

## Methods

### begin

```haxe
override function begin(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### end

```haxe
override function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### loadShaderDef

```haxe
function loadShaderDef():Void
```

Compiles the shader graph.

### getShaderDefinition

```haxe
function getShaderDefinition():hxsl.SharedShader
```

Returns the compiled shader, or `null`.

### resolve

```haxe
function resolve():hrt.shgraph.ShaderGraph
```

Returns the shader graph, loaded from `source`.

### edit _(editor (js) only)_

```haxe
override function edit(ectx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):ScreenShaderGraph
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
