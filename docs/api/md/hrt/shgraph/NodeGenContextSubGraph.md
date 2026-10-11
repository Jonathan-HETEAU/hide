# hrt.shgraph.NodeGenContextSubGraph

**class** · package [`hrt.shgraph`](README.md) · module `hrt.shgraph.NodeGenContext` · source [`hrt/shgraph/NodeGenContext.hx`](../../../../../hrt/shgraph/NodeGenContext.hx)

Extends: [`hrt.shgraph.NodeGenContext`](NodeGenContext.md)

The generation context of a sub graph: its globals become the inputs and outputs of the `SubGraph` node.

## Constructor

### new

```haxe
function new(graph:Graph, parentCtx:NodeGenContext):Void
```

Creates the context of a sub graph, generated in `parentCtx`.

## Methods

### getGlobalInput

```haxe
override function getGlobalInput(id:Global):hxsl.TExpr
```

### getGlobalTVar

```haxe
override function getGlobalTVar(tvar:hxsl.TVar):hxsl.TExpr
```

### setGlobalOutput

```haxe
override function setGlobalOutput(id:Global, expr:hxsl.TExpr):Void
```

### getGlobalParam

```haxe
override function getGlobalParam(name:String, type:hxsl.Type):hxsl.TExpr
```

### setGlobalCustomOutput

```haxe
override function setGlobalCustomOutput(name:String, expr:hxsl.TExpr):Void
```

### addExpr

```haxe
override function addExpr(expr:hxsl.TExpr):Void
```

## Inherited members

- from [`hrt.shgraph.NodeGenContext`](NodeGenContext.md): `domain`, `previewDomain`, `graph`, `explicitVarNames`, `getGlobalInput`, `getGlobalTVar`, `setGlobalOutput`, `getGlobalParam`, `setGlobalCustomOutput`, `getShaderVariable`, `ensureVarInit`, `addPreview`, `addFunction`, `addExpr`, `setOutput`, `getType`, `getGenericType`, `getInput`
