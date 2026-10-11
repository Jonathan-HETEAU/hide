# hide.comp.PreviewSettings

**typedef** · package [`hide.comp`](README.md) · module `hide.comp.GradientEditor` · source [`hide_js/hide/comp/GradientEditor.hx`](../../../../../hide_js/hide/comp/GradientEditor.hx) · available on editor (js)

A gradient preview of the `cdb.gradientCustomPreviews` config: shows a prefab using the edited gradient.

## Fields

### renderProps

```haxe
var ?renderProps:Null<String>
```

The render props of the preview.

### prefabs

```haxe
var ?prefabs:Null<Array<String>>
```

Several prefab paths or `cdb@column_with_the_path`: the first one not null is used.

### prefab

```haxe
var prefab:String
```

The prefab path, or `cdb@column_with_the_path`.

### overrides

```haxe
var ?overrides:Null<Array<DataOverride>>
```

The values of the CDB line to set in the prefab.

### cdbPaths

```haxe
var cdbPaths:Array<String>
```

The `sheet.column` names the preview applies to.
