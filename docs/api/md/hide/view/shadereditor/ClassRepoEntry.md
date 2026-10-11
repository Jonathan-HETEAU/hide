# hide.view.shadereditor.ClassRepoEntry

**typedef** · package [`hide.view.shadereditor`](README.md) · module `hide.view.shadereditor.ShaderEditor` · source [`hide_js/hide/view/shadereditor/ShaderEditor.hx`](../../../../../../hide_js/hide/view/shadereditor/ShaderEditor.hx) · available on editor (js)

A node class shown in the add node menu.

## Fields

### nameSearch

```haxe
var nameSearch:String
```

Displayed name in the seach box

### nameOverride

```haxe
var ?nameOverride:Null<String>
```

Custom name for the node that will be created

### group

```haxe
var group:String
```

Group where the node is in the search

### description

```haxe
var description:String
```

Description of the node in the search box

### cl

```haxe
var cl:Class<hrt.shgraph.ShaderNode>
```

Class of the node

### args

```haxe
var args:Array<Dynamic>
```

Arguments passed to the constructor when the node is created
