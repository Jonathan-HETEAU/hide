# hide.HideProjectConfig

**typedef** · package [`hide`](README.md) · source [`hide_js/hide/HideProjectConfig.hx`](../../../../hide_js/hide/HideProjectConfig.hx) · available on editor (js)

The settings of the IDE for a project.

## Fields

### renderer

```haxe
var renderer:String
```

The name of the renderer.

### layouts

```haxe
var layouts:Array<{ state:LayoutState, name:String }>
```

The saved layouts.

### dbProofread

```haxe
var dbProofread:Null<Bool>
```

Enables the CDB proofreading mode.

### dbCategories

```haxe
var dbCategories:Array<String>
```

The shown CDB categories, or null for all.
