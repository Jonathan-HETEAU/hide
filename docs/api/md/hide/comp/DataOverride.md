# hide.comp.DataOverride

**typedef** · package [`hide.comp`](README.md) · module `hide.comp.GradientEditor` · source [`hide_js/hide/comp/GradientEditor.hx`](../../../../../hide_js/hide/comp/GradientEditor.hx) · available on editor (js)

A value of the CDB line set in the preview prefab.

## Fields

### type

```haxe
var type:String
```

`gradient` to convert a CDB gradient to a prefab gradient, or null to copy the value.

### targetPath

```haxe
var targetPath:String
```

The prefab and property to set: `parent/child.prop.subProp` (`*` matches the children, `**` all the descendants).

### cdbPath

```haxe
var cdbPath:String
```

The path of the value in the CDB line (`a.b`). For the path of the edited gradient, the value being edited is used.
