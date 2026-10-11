# Package `hrt.shgraph`

[← API index](../../README.md)

Sub-packages: [`hrt.shgraph.nodes`](nodes/README.md)

| Type | Kind | Summary |
|---|---|---|
| [`AliasInfo`](AliasInfo.md) | typedef | Another entry of a node in the node menu. |
| [`AlphaPreview`](AlphaPreview.md) | class | Displays the transparency of a node preview on a checkerboard. |
| [`AngleUnit`](AngleUnit.md) | enum abstract | The unit of an angle input of a node. |
| [`ArrayUtils`](ArrayUtils.md) | class | Macros on arrays. |
| [`AstTools`](AstTools.md) | class | Helpers to build HXSL expressions (`hxsl.Ast`). |
| [`CacheEntry`](CacheEntry.md) | typedef | The parsed HXSL code of a `ShaderNodeHxsl` node class. |
| [`Connection`](Connection.md) | typedef | The connection of an input of a node. |
| [`CustomSerializer`](CustomSerializer.md) | class | A HXSL serializer keeping the variable ids, used to read the code of the nodes. |
| [`CustomVarChooser`](CustomVarChooser.md) | class | A component choosing the name and type of a custom variable (editor only). |
| [`Domain`](Domain.md) | enum | The shader function of a graph. |
| [`Edge`](Edge.md) | typedef | A serialized connection between an output and an input. |
| [`ExternVarDef`](ExternVarDef.md) | class | An external variable of the generated shader. |
| [`FunctionCache`](FunctionCache.md) | typedef | A function of a `ShaderNodeHxsl` node. |
| [`Functions`](Functions.md) | class | HXSL functions shared by the nodes (`random`). |
| [`Global`](Global.md) | enum abstract | A global variable available to the shader graph nodes (see `Variables.Globals`). |
| [`GlobalInfo`](GlobalInfo.md) | typedef | The definition of a global variable. |
| [`Graph`](Graph.md) | class | The graph of a domain of a `ShaderGraph`: its nodes and their connections. |
| [`InputInfo`](InputInfo.md) | typedef | An input of a node. |
| [`InputKind`](InputKind.md) | enum | The kind of a `ShaderInput`. |
| [`Macros`](Macros.md) | class | Builds the shader graph nodes: parses the HXSL code (`SRC`) of `ShaderNodeHxsl` nodes and registers the nodes. |
| [`NodeGenContext`](NodeGenContext.md) | class | The context of the generation of the nodes of a graph: gives them their inputs and the global variables, and collects their expressions and outputs. |
| [`NodeGenContextSubGraph`](NodeGenContextSubGraph.md) | class | The generation context of a sub graph: its globals become the inputs and outputs of the `SubGraph` node. |
| [`Operation`](Operation.md) | class | The base of the math operation nodes. |
| [`OutputInfo`](OutputInfo.md) | typedef | An output of a node. |
| [`Parameter`](Parameter.md) | typedef | A parameter of a shader graph: a shader parameter editable in the materials. |
| [`Random`](Random.md) | class | The shader graph node "Math" (Channel): a random value between `min` and `max`. |
| [`SType`](SType.md) | enum | A type of the old shader graph nodes. |
| [`SgHxslVar`](SgHxslVar.md) | enum | The role of a variable in the HXSL code of a node (`ShaderNodeHxsl`), from its metadata. |
| [`SgType`](SgType.md) | enum | The type of an input or output of a shader graph node. |
| [`ShaderConst`](ShaderConst.md) | class | A node with a constant name (no output). |
| [`ShaderCustomGlobal`](ShaderCustomGlobal.md) | class | The shader graph node "Custom Global" (Input): reads a shader global by name. |
| [`ShaderDefInput`](ShaderDefInput.md) | enum | The default value of a node input. |
| [`ShaderException`](ShaderException.md) | class | An error of a node of a shader graph. |
| [`ShaderGlobalInput`](ShaderGlobalInput.md) | class | The shader graph node "Global" (Input): reads a global (time, pixel size, camera position, screen shader source). |
| [`ShaderGraph`](ShaderGraph.md) | class | A shader made with nodes in the editor (`.shgraph` file): a vertex and a fragment graph, compiled to HXSL. |
| [`ShaderGraphCacheEntry`](ShaderGraphCacheEntry.md) | class | A compiled shader graph in the cache. |
| [`ShaderGraphGenContext`](ShaderGraphGenContext.md) | class | Generates the HXSL expression of a graph, by sorting and generating its nodes. |
| [`ShaderGraphVariable`](ShaderGraphVariable.md) | class | A local variable of a shader graph, read and written by the `VarRead` and `VarWrite` nodes. |
| [`ShaderInput`](ShaderInput.md) | class | The shader graph node "Inputs" (Input): reads a shader input of Heaps (see `availableInputs`). |
| [`ShaderNode`](ShaderNode.md) | class | A node of a shader graph. |
| [`ShaderNodeDef`](ShaderNodeDef.md) | typedef | The HXSL definition of a node. |
| [`ShaderNodeDefInVar`](ShaderNodeDefInVar.md) | typedef | An input of a node definition. |
| [`ShaderNodeDefOutVar`](ShaderNodeDefOutVar.md) | typedef | An output of a node definition. |
| [`ShaderNodeHxsl`](ShaderNodeHxsl.md) | class | A node written in HXSL (`static var SRC`), its inputs and outputs being the variables with `@sginput` and `@sgoutput` metadata. |
| [`ShaderOutput`](ShaderOutput.md) | class | The shader graph node "Outputs" (Output): writes a shader output (see `availableOutputs`). |
| [`ShaderParam`](ShaderParam.md) | class | The shader graph node "Parameter": reads a parameter of the graph. |
| [`ShaderParticleInputs`](ShaderParticleInputs.md) | class | The shader graph node "Particle Inputs" (Input): reads a particle input (see `availableInputs`). |
| [`ShaderType`](ShaderType.md) | class | Conversions between `SType` and HXSL types. |
| [`VariableDecl`](VariableDecl.md) | typedef | A variable available as a node input or output. |
| [`VariableKind`](VariableKind.md) | enum | The kind of a global variable. |
| [`Variables`](Variables.md) | class | The global variables of the shader graphs. |
