# hide.view.shadereditor.PreviewSettings

**class** · package [`hide.view.shadereditor`](README.md) · module `hide.view.shadereditor.ShaderEditor` · source [`hide_js/hide/view/shadereditor/ShaderEditor.hx`](../../../../../../hide_js/hide/view/shadereditor/ShaderEditor.hx) · available on editor (js)

The settings of the mesh preview, saved in the display state.

## Constructor

### new

```haxe
function new():Void
```

Creates the default settings.

## Variables

### meshPath

```haxe
var meshPath:String
```

The previewed mesh: `Sphere`, `Plane`, `ScreenFX`, or the path of an FBX or prefab.

### bgColor

```haxe
var bgColor:Int
```

The background color.

### renderPropsPath

```haxe
var renderPropsPath:String
```

The path of the render props prefab, or null.

### alphaBlend

```haxe
var alphaBlend:Bool
```

Renders the preview with alpha blending.

### backfaceCulling

```haxe
var backfaceCulling:Bool
```

Culls the back faces.

### unlit

```haxe
var unlit:Bool
```

Renders the preview unlit.

### previewAlpha

```haxe
var previewAlpha:Bool
```

Shows the alpha channel.

### shadows

```haxe
var shadows:Bool
```

Enables the shadows.

### screenFXusePrevTarget

```haxe
var screenFXusePrevTarget:Bool
```

For the `ScreenFX` preview: the screen shader reads the previous target.

### screenFXBlend

```haxe
var screenFXBlend:h3d.mat.PbrBlend
```

For the `ScreenFX` preview: the blend mode.

### width

```haxe
var width:Int
```

The preview width in pixels.

### height

```haxe
var height:Int
```

The preview height in pixels.
