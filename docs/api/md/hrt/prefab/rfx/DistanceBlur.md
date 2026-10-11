# hrt.prefab.rfx.DistanceBlur

**class** · package [`hrt.prefab.rfx`](README.md) · source [`hrt/prefab/rfx/DistanceBlur.hx`](../../../../../../hrt/prefab/rfx/DistanceBlur.hx)

Extends: [`hrt.prefab.rfx.RendererFX`](RendererFX.md) → [`hrt.prefab.Prefab`](../Prefab.md)

Blurs the near and far parts of the screen (depth of field).

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

### nearStartDistance

```haxe
var nearStartDistance:Float
```

The distance at which the near blur starts.

### nearEndDistance

```haxe
var nearEndDistance:Float
```

The distance at which the near blur ends.

### nearStartIntensity

```haxe
var nearStartIntensity:Float
```

The opacity of the near blur at its start.

### nearEndIntensity

```haxe
var nearEndIntensity:Float
```

The opacity of the near blur at its end.

### farStartDistance

```haxe
var farStartDistance:Float
```

The distance at which the far blur starts.

### farEndDistance

```haxe
var farEndDistance:Float
```

The distance at which the far blur ends.

### farStartIntensity

```haxe
var farStartIntensity:Float
```

The opacity of the far blur at its start.

### farEndIntensity

```haxe
var farEndIntensity:Float
```

The opacity of the far blur at its end.

### showDebug

```haxe
var showDebug:Bool
```

Shows the blur zones (editor).

### blurTextureSize

```haxe
var blurTextureSize:Float
```

The size of the blurred texture, relative to the screen.

### blurRange

```haxe
var blurRange:Int
```

The blur radius.

## Methods

### end

```haxe
override function end(r:h3d.scene.Renderer, step:h3d.impl.Step):Void
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):DistanceBlur
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.rfx.RendererFX`](RendererFX.md): `start`, `begin`, `end`, `transition`, `modulate`, `dispose`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
