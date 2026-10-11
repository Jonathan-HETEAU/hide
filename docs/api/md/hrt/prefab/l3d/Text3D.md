# hrt.prefab.l3d.Text3D

**class** · package [`hrt.prefab.l3d`](README.md) · source [`hrt/prefab/l3d/Text3D.hx`](../../../../../../hrt/prefab/l3d/Text3D.hx)

Extends: [`hrt.prefab.Object3D`](../Object3D.md) → [`hrt.prefab.Prefab`](../Prefab.md)

A text in 3D, with a signed distance field font.

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

### defaultLoadText

```haxe
static dynamic function defaultLoadText(id:String):String
```

Returns the text for an id (for localization), or `null` to use the id. Returns `null` by default.

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### contentText

```haxe
var contentText:String
```

The text, or a text id resolved by `defaultLoadText`.

## Methods

### getHideProps _(editor (js) only)_

```haxe
override function getHideProps():hide.prefab.HideProps
```

### edit _(editor (js) only)_

```haxe
override function edit(ctx:hide.prefab.EditContext):Void
```

### edit2 _(editor (js) only)_

```haxe
override function edit2(ctx:hrt.prefab.EditContext2):Void
```

### loadFont

```haxe
dynamic function loadFont():h2d.Font
```

Returns the font: `defaultLoadFont`, or the font at `pathFont` converted to a SDF font.

### loadText

```haxe
dynamic function loadText():String
```

Returns the text: `defaultLoadText(contentText)`, or `contentText`.

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):Text3D
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Object3D`](../Object3D.md): `local3d`, `x`, `y`, `z`, `scaleX`, `scaleY`, `scaleZ`, `rotationX`, `rotationY`, `rotationZ`, `visible`, `editorIcon`, `get_scaleArray`, `set_scaleArray`, `setTransform`, `saveTransform`, `applyTransform`, `getTransform`, `localRayIntersection`, `loadTransform`, `getAbsPos`, `getRelativeTransform`, `getObjects`, `getDisplayFilters`, `edit2`, `makeInteractive`, `setSelected`, `addEditorUI`, `removeEditorUI`, `edit`, `getHideProps`, `make`
- from [`hrt.prefab.Prefab`](../Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
