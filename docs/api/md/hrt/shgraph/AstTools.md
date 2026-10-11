# hrt.shgraph.AstTools

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/AstTools.hx`](../../../../../hrt/shgraph/AstTools.hx)

Helpers to build HXSL expressions (`hxsl.Ast`).

## Static variables

### defPos

```haxe
static var defPos:hxsl.Position
```

The empty position used by the expressions.

## Static methods

### makePos

```haxe
static inline function makePos():hxsl.Position
```

Returns an empty position.

### makeIf

```haxe
static inline function makeIf(cond:hxsl.TExpr, inner:hxsl.TExpr, ?other:hxsl.TExpr, ?pos:hxsl.Position, ?type:hxsl.Type = TVoid):hxsl.TExpr
```

Returns `if (cond) inner else other`.

### makeDynamic

```haxe
static function makeDynamic(type:hxsl.Type, value:Dynamic):hxsl.TExpr
```

Returns the constant of an int, float or float vector type for a value (`0` if invalid). Throws for other types.

### makeAssign

```haxe
static inline function makeAssign(to:hxsl.TExpr, from:hxsl.TExpr):hxsl.TExpr
```

Returns `to = from`.

### makeInt

```haxe
static inline function makeInt(int:Int):hxsl.TExpr
```

Returns an int constant.

### makeFloat

```haxe
static inline function makeFloat(float:Float):hxsl.TExpr
```

Returns a float constant.

### makeVec

```haxe
static inline function makeVec(values:Array<Float>):hxsl.TExpr
```

Returns a vector constant of 2 to 4 floats.

### makeVecExpr

```haxe
static inline function makeVecExpr(values:Array<hxsl.TExpr>, ?ctor:hxsl.TGlobal):hxsl.TExpr
```

Returns a vector of 2 to 4 expressions (with the constructor `ctor`, or `vec2` to `vec4`).

### makeVar

```haxe
static inline function makeVar(v:hxsl.TVar, ?pos:hxsl.Position):hxsl.TExpr
```

Returns a variable expression.

### makeSwizzle

```haxe
static inline function makeSwizzle(e:hxsl.TExpr, components:Array<hxsl.Component>):hxsl.TExpr
```

Returns a swizzle of `e`.

### makeVarDecl

```haxe
static inline function makeVarDecl(v:hxsl.TVar, ?init:hxsl.TExpr):hxsl.TExpr
```

Returns a variable declaration.

### makeExpr

```haxe
static inline function makeExpr(def:hxsl.TExprDef, type:hxsl.Type, ?pos:hxsl.Position):hxsl.TExpr
```

Returns an expression.

### makeBinop

```haxe
static inline function makeBinop(a:hxsl.TExpr, op:hxsl.Binop, b:hxsl.TExpr):hxsl.TExpr
```

Returns `a op b`, of the type of `a`.

### makeEq

```haxe
static inline function makeEq(a:hxsl.TExpr, b:hxsl.TExpr):hxsl.TExpr
```

Returns `a == b`.

### makeGlobalCall

```haxe
static inline function makeGlobalCall(global:hxsl.TGlobal, args:Array<hxsl.TExpr>, retType:hxsl.Type):hxsl.TExpr
```

Returns a call to a HXSL global function.

### getFullName

```haxe
static function getFullName(tvar:hxsl.TVar):String
```

Returns the full name of a variable, as `parent.name`.

### removeFromParent

```haxe
static function removeFromParent(tvar:hxsl.TVar):Void
```

Removes a variable from its parent struct.
