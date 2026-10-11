# hide.kit.BuildExprArgs

**typedef** · package [`hide.kit`](README.md) · module `hide.kit.Macros` · source [`hide/kit/Macros.hx`](../../../../../hide/kit/Macros.hx) · available on editor (js)

The arguments of the generation of the elements of a markup.

## Fields

### parent

```haxe
var parent:Expr
```

The expression of the parent element.

### outputExprs

```haxe
var outputExprs:Array<Expr>
```

The generated expressions.

### onAnyChange

```haxe
var ?onAnyChange:Null<ExprOf<(isTemp:Bool) -> Void>>
```

The callback bound to all the widgets.

### markup

```haxe
var markup:domkit.Markup
```

The markup.

### index

```haxe
var index:Int
```

The index of the element.

### globalElements

```haxe
var globalElements:Array<Var>
```

The variables of the elements with an id.

### contextObj

```haxe
var contextObj:Expr
```

The object whose fields are bound.
