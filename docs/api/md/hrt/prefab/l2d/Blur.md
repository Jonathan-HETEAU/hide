# hrt.prefab.l2d.Blur

**class** · package [`hrt.prefab.l2d`](README.md) · source [`hrt/prefab/l2d/Blur.hx`](../../../../../../hrt/prefab/l2d/Blur.hx)

Extends: [`hrt.prefab.Prefab`](../Prefab.md)

A blur filter, usable on 2D objects (`makeFilter`) or textures (`apply`).

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static methods

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### radius

```haxe
var radius:Float
```

The blur radius.

### quality

```haxe
var quality:Float
```

The quality.

### gain

```haxe
var gain:Float
```

The gain.

### linear

```haxe
var linear:Float
```

The linear part of the blur.

### image

```haxe
var image:String
```

The path of an image to test the blur in the editor.

### zoom

```haxe
var zoom:Int
```

The zoom of the test image.

## Methods

### makeFilter

```haxe
function makeFilter():h2d.filter.Blur
```

Returns a `h2d.filter.Blur` with these parameters.

### apply

```haxe
function apply(t:h3d.mat.Texture, ctx:h3d.impl.RenderContext):h3d.mat.Texture
```

Blurs the texture in place and returns it.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Blur
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
