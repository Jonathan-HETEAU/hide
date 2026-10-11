# hrt.impl.EditorTools

**class** · package [`hrt.impl`](README.md) · source [`hrt/impl/EditorTools.hx`](../../../../../hrt/impl/EditorTools.hx) · available on editor (js)

Helpers for the editor icons (editor only).

## Static methods

### create3DIcon

```haxe
static function create3DIcon(object:h3d.scene.Object, iconPath:String, ?scale:Float = 1.0, category:IconCategory):EditorIcon
```

Creates a 3D icon in the scene, which can be hidden by other objects.

### create2DIcon

```haxe
static function create2DIcon(object:h3d.scene.Object, s2d:h2d.Object, iconPath:String, category:IconCategory):Editor2DIcon
```

Creates a 2D icon, drawn over the scene.

### setupIconCategories

```haxe
static function setupIconCategories():Void
```

Loads the visibility of the icon categories.

### iconVisibilityKey

```haxe
static function iconVisibilityKey(category:IconCategory):String
```

Returns the key storing the visibility of a category.

### isVisible

```haxe
static function isVisible(category:IconCategory):Bool
```

Tells if the icons of a category are visible.
