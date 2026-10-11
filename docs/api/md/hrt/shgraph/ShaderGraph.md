# hrt.shgraph.ShaderGraph

**class** · package [`hrt.shgraph`](README.md) · source [`hrt/shgraph/ShaderGraph.hx`](../../../../../hrt/shgraph/ShaderGraph.hx)

Extends: [`hrt.prefab.Prefab`](../prefab/Prefab.md)

A shader made with nodes in the editor (`.shgraph` file): a vertex and a fragment graph, compiled to HXSL.

## Constructor

### new

```haxe
function new(parent:hrt.prefab.Prefab, contextShared:hrt.prefab.ContextShared):Void
```

## Static methods

### resolveDynamicType

```haxe
static function resolveDynamicType(inputTypes:Array<hxsl.Type>, inVars:Array<ShaderNodeDefInVar>):hxsl.Type
```

Returns the type of the dynamic inputs: the smallest vector connected to a dynamic input, or `TFloat`. Throws for incompatible types.

### convertToHXSL _(editor (js) only)_

```haxe
static function convertToHXSL(shgraphPath:String, hxslPath:String):Void
```

Writes the compiled graph as a HXSL shader class in a `.hx` file under `src` (editor only).

### getSerializablePropsStatic

```haxe
static function getSerializablePropsStatic():Array<hrt.prefab.PrefabField>
```

Returns the list of props that have the @:s meta tag associated to them in this prefab type

## Variables

### variables

```haxe
var variables:Array<ShaderGraphVariable>
```

The local variables.

### parametersAvailable

```haxe
var parametersAvailable:Map<Int, Parameter>
```

The parameters, by id.

## Methods

### load

```haxe
override function load(json:Dynamic):Void
```

### copy

```haxe
override function copy(other:hrt.prefab.Prefab):Void
```

### saveToText

```haxe
function saveToText():String
```

Returns the serialized graph, as JSON.

### compile

```haxe
function compile(options:{ ?previewDomain:Null<Domain>, ?explicitVarNames:Null<Bool> }):hrt.prefab.ShaderDef
```

Compiles the graph to a shader (cached at runtime). `previewDomain` compiles the preview of a domain, `explicitVarNames` keeps readable variable names.

### makeShaderInstance

```haxe
function makeShaderInstance():hxsl.DynamicShader
```

Compiles the graph and returns a shader with the default values of the parameters.

### getParameter

```haxe
function getParameter(id:Int):Null<Parameter>
```

Returns the parameter of an id.

### setParameterTitle

```haxe
function setParameterTitle(id:Int, newName:String):Bool
```

Renames a parameter. Returns `false` if the name is used.

### setParameterDefaultValue

```haxe
function setParameterDefaultValue(id:Int, newDefaultValue:Dynamic):Bool
```

Sets the default value of a parameter. Returns `false` if it did not change.

### removeParameter

```haxe
function removeParameter(id:Int):Void
```

Removes a parameter.

### mapShaderVar

```haxe
function mapShaderVar(cb:(v:hrt.shgraph.nodes.ShaderVar) -> Bool):Void
```

Iterate on all the shaderVars in the graph, breaking if the cb return false

### getGraph

```haxe
function getGraph(domain:Domain):Graph
```

Returns the graph of a domain.

### make

```haxe
override function make(?sh:hrt.prefab.ContextMake):ShaderGraph
```

Instanciates this prefab. If `sh` is given or if `this.shared.isInstance` is false, this prefab is cloned and the clone is instanciated and returned. If `this.shared.isInstance` is true, this prefab is instanciated instead.

## Inherited members

- from [`hrt.prefab.Prefab`](../prefab/Prefab.md): `type`, `name`, `source`, `set_source`, `children`, `enabled`, `editorOnly`, `inGameOnly`, `locked`, `props`, `parent`, `shared`, `clone`, `reload`, `dispose`, `addChild`, `addChildAt`, `removeChild`, `remove`, `findFirstLocal2d`, `findFirstLocal3d`, `get`, `getOpt`, `getRoot`, `flatten`, `all`, `find`, `findAll`, `findParent`, `getTag`, `iterator`, `getUniqueName`, `getAbsPath`, `getCdbType`, `toString`, `isLocked`, `getDefaultEditorName`, `edit2`, `makeInteractive`, `editorAllowParent`, `editorAllowChild`, `setSelected`, `onEditorTreeChanged`, `getHideProps`, `needUniqueName`, `edit`, `setEditor`, `getSerializableProps`, `locatePrefab`, `make`
