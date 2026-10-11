# hrt.prefab.l2d.Text

**class** · package [`hrt.prefab.l2d`](README.md) · source [`hrt/prefab/l2d/Text.hx`](../../../../../../hrt/prefab/l2d/Text.hx)

Extends: [`hrt.prefab.Object2D`](../Object2D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A 2D HTML text, with a signed distance field font.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static methods

### defaultLoadFont

```haxe
static dynamic function defaultLoadFont(pathFont:String, size:Int, cutoff:Float, smoothing:Float):h2d.Font
```

Returns the font to use, or `null` to load `pathFont`. Returns `null` by default.

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Methods

### load

```haxe
override function load(v:Dynamic):Void
```

### copy

```haxe
override function copy(other:hrt.prefab.Prefab):Void
```

### loadFont

```haxe
dynamic function loadFont():h2d.Font
```

Returns the font: `defaultLoadFont`, or the font at `pathFont` converted to a SDF font.

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### makeInteractive

```haxe
override function makeInteractive():h2d.Interactive
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Text
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object2D`](../Object2D.md): `local2d`, `x`, `y`, `scaleX`, `scaleY`, `rotation`, `visible`, `blendMode`, `get_scaleArray`, `set_scaleArray`, `loadTransform`, `saveTransform`, `setTransform`, `applyTransform`, `getDefaultEditorName`, `getTransformMatrix`, `setTransformMatrix`, `edit2`, `getHideProps`, `edit`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
