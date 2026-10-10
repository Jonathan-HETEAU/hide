package hrt.shgraph;

using hxsl.Ast;
using Lambda;
using hrt.shgraph.Utils;
import hrt.tools.MapUtils;
import hrt.shgraph.AstTools.*;
import hrt.shgraph.ShaderGraph;
import hrt.shgraph.ShaderNode;

/**
	The generation context of a sub graph: its globals become the inputs and outputs of the `SubGraph` node.
**/
class NodeGenContextSubGraph extends NodeGenContext {
	/**
		Creates the context of a sub graph, generated in `parentCtx`.
	**/
	public function new(graph: ShaderGraph.Graph, parentCtx : NodeGenContext) {
		super(graph, parentCtx?.domain ?? Fragment);
		this.parentCtx = parentCtx;
	}

	override function getGlobalInput(id: Variables.Global) : TExpr {
		var global = Variables.Globals[id];
		var info = MapUtils.getOrPut(globalInVars, Variables.getFullPath(global), {type: global.type, id: inputCount++});
		return parentCtx?.nodeInputExprs[info.id] ?? parentCtx?.getGlobalInput(id) ?? super.getGlobalInput(id);
	}

	override function getGlobalTVar(tvar: TVar) : TExpr {
		if (parentCtx != null) {
			return parentCtx.getGlobalTVar(tvar);
		} else {
			return super.getGlobalTVar(tvar);
		}
	}

	override  function setGlobalOutput(id: Variables.Global, expr: TExpr) : Void {
		var global = Variables.Globals[id];
		if (outputCount == 0 && parentCtx != null) {
			parentCtx.addPreview(expr);
		}
		var info = MapUtils.getOrPut(globalOutVars, Variables.getFullPath(global), {type: global.type, id: outputCount ++});
		if (parentCtx != null) {
			parentCtx.setOutput(info.id, expr);
		} else {
			super.setGlobalOutput(id, expr);
		}
	}

	override  function getGlobalParam(name: String, type: Type) : TExpr {
		var info = MapUtils.getOrPut(globalInVars, name, {type: type, id: inputCount ++});
		return parentCtx?.nodeInputExprs[info.id] ?? parentCtx?.getGlobalParam(name, type) ?? super.getGlobalParam(name, type);
	}

	override function setGlobalCustomOutput(name: String, expr: TExpr) : Void {
		if (outputCount == 0 && parentCtx != null) {
			parentCtx.addPreview(expr);
		}
		var info = MapUtils.getOrPut(globalOutVars, name, {type : expr.t, id: outputCount ++});
		if (parentCtx != null) {
			parentCtx.setOutput(info.id, expr);
		} else {
			super.setGlobalCustomOutput(name, expr);
		}
	}

	override function addExpr(expr: TExpr) : Void {
		if (parentCtx != null) {
			parentCtx.addExpr(expr);
		}
	}

	var parentCtx : NodeGenContext;

	var globalInVars: Map<String, {type: Type, id: Int}> = [];
	var globalOutVars: Map<String, {type: Type, id: Int}> = [];
	var inputCount = 0;
	var outputCount = 0;
}

/**
	The context of the generation of the nodes of a graph: gives them their inputs and the global variables, and collects their expressions and outputs.
**/
@:allow(hrt.shgraph.ShaderGraph)
class NodeGenContext {
	// Pour les rares nodes qui ont besoin de differencier entre vertex et fragment
	/**
		The domain generated, for the nodes that differ between vertex and fragment.
	**/
	public var domain : ShaderGraph.Domain;
	/**
		The domain of the node previews, or `null`.
	**/
	public var previewDomain: ShaderGraph.Domain = null;
	/**
		The graph.
	**/
	public var graph: ShaderGraph.Graph = null;

	/**If true, generate human readable names for variables in the shader cache (exists to support backward shader generation when var names where not explicit)**/
	public var explicitVarNames: Bool = false;

	/**
		Creates the context.
	**/
	public function new(graph: ShaderGraph.Graph, domain: ShaderGraph.Domain) {
		this.domain = domain;
		this.graph = graph;
	}

	// For general input/output of the shader graph. Allocate a new global var if name is not found,
	// else return the previously allocated variable and assert that v.type == type and devValue == v.defValue
	/**
		Returns the expression reading a global, allocated on first use.
	**/
	public function getGlobalInput(id: Variables.Global) : TExpr {
		var global = Variables.Globals[id];
		switch (global.varkind) {
			case KVar(_,_,_):
				var v = getOrAllocateGlobal(id);
				return makeVar(v);
			case KSwizzle(id, swiz):
				var v = getOrAllocateGlobal(id);
				return makeSwizzle(makeVar(v), swiz);
		}
	}

	/**
		Returns the expression reading an external variable, allocated on first use.
	**/
	public function getGlobalTVar(tvar: TVar) : TExpr {
		return makeVar(getOrAllocateFromTVar(tvar));
	}

	/**
		Assigns an expression to a global.
	**/
	public function setGlobalOutput(id: Variables.Global, expr: TExpr) : Void {
		var global = Variables.Globals[id];
		switch (global.varkind) {
			case KVar(_,_,_):
				var v = getOrAllocateGlobal(id);
				expressions.push(makeAssign(makeVar(v), expr));
			case KSwizzle(otherId, swiz):
				var v = getOrAllocateGlobal(otherId);
				expressions.push(makeAssign(makeSwizzle(makeVar(v), swiz), expr));
		}
	}

	/**
		Returns the expression reading a shader parameter, allocated on first use.
	**/
	public function getGlobalParam(name: String, type: Type) : TExpr {
		return makeVar(MapUtils.getOrPut(globalVars, name, {v: {id: hxsl.Ast.Tools.allocVarId(), name: name, type: type, kind: Param}, defValue:null, __init__: null}).v);
	}

	/**
		Assigns an expression to a named variable, allocated on first use.
	**/
	public function setGlobalCustomOutput(name: String, expr: TExpr) : Void {
		var v = makeVar(MapUtils.getOrPut(globalVars, name, {v: {id: hxsl.Ast.Tools.allocVarId(), name: name, type: expr.t, kind: Param}, defValue:null, __init__: null}).v);
		expressions.push(makeAssign(v, expr));
	}

	/**
		Returns the variable of a local variable of the graph, assigned with `init` the first time.
	**/
	public function getShaderVariable(id: Int, init: TExpr = null) : TVar {
		var graphVar = graph.parent.variables[id];
		var type = ShaderGraph.sgTypeToType(graphVar.type);
		var variable = MapUtils.getOrPut(shaderVariables, id, {
			var varId = hxsl.Ast.Tools.allocVarId();
			var name = if (graphVar.isGlobal) graphVar.name else '_local_${graphVar.name}_$varId';
			{variable: {id: varId, name: name, type: type, kind: Local}, isInit: false}
		});
		if (init != null && !variable.isInit) {
			variable.isInit = true;
			addExpr(AstTools.makeAssign(AstTools.makeVar(variable.variable), init));
		}
		return variable.variable;
	}

	/**
		Add a default value init for the variable in case it doesn't exist
	**/
	public function ensureVarInit(tvar: TVar) {
		var fullName = AstTools.getFullName(tvar);
		var def = globalVars.get(fullName);
		if (def == null) {
			throw "var not created";
		}
		if (def.__init__ != null)
			return;
		def.__init__ = makeAssign(makeVar(def.v), convertToType(def.v.type, makeFloat(0)));
	}

	function getOrAllocateFromTVar(tvar: TVar) : TVar {
		var fullName = AstTools.getFullName(tvar);

		var def = globalVars.get(fullName);
		if (def != null) {
			return def.v;
		}

		// special case handling for normal because it gets replaced in the preview shader
		if (fullName == "input.normal")
			return getOrAllocateGlobal(Normal);

		if (fullName == "input.uv2")
			return getOrAllocateGlobal(UV2);

		if (fullName == "input.uv3")
			return getOrAllocateGlobal(UV3);

		if (fullName == "input.uv4")
			return getOrAllocateGlobal(UV4);


		var type = tvar.type;
		switch (type) {
			case TStruct(_):
				type = TStruct([]);
			default:
		}

		var v : TVar = {id: hxsl.Ast.Tools.allocVarId(), name: tvar.name, type: type, kind: tvar.kind, qualifiers: tvar.qualifiers};
		def = {v:v, defValue: null, __init__: null};
		if (tvar.parent != null) {
			v.parent = getOrAllocateFromTVar(tvar.parent);
			switch(v.parent.type) {
				case TStruct(arr):
					arr.push(v);
				default: throw "parent must be a TStruct";
			}
		}
		globalVars.set(fullName, def);
		return def.v;
	}

	function getOrAllocateGlobal(id: Variables.Global) : TVar {
		// Remap id for certains variables
		if (previewDomain == domain) {
			switch (id) {
				case Normal:
					id = FakeNormal;
				case UV2, UV3, UV4:
					id = UV;
				default:
			}
		}

		var global = Variables.Globals[id];

		switch (global.varkind)
		{
			case KVar(kind, parent, defValue):
				var fullName = Variables.getFullPath(global);
				var def : ShaderGraph.ExternVarDef = globalVars.get(fullName);
				if (def == null) {
					var v : TVar = {id: hxsl.Ast.Tools.allocVarId(), name: global.name, type: global.type, kind: kind};
					var __init__ = null;
					if (global.__init__ != null) {
						__init__ = AstTools.makeAssign(AstTools.makeVar(v), global.__init__);
					}
					def = {v: v, defValue: defValue, __init__: __init__};
					if (parent != null) {
						var p = Variables.Globals[parent];
						switch (p.varkind) {
							case KVar(kind, _, _):
								v.parent = MapUtils.getOrPut(globalVars, Variables.getFullPath(p), {v : {id : hxsl.Ast.Tools.allocVarId(), name: p.name, type: TStruct([]), kind: kind}, defValue: null, __init__: null}).v;
							default:
								throw "Parent var must be a KVar";
						}
						switch(v.parent.type) {
							case TStruct(arr):
								arr.push(v);
							default: throw "parent must be a TStruct";
						}
					}

					// Post process certain variables
					switch (id) {
						case CalculatedUV:
							var uv = getOrAllocateGlobal(UV);
							var expr = makeAssign(makeVar(v), makeVar(uv));
							def.__init__ = expr;
						default:
					}
					globalVars.set(fullName, def);
				}
				return def.v;
			default: throw "id must be a global Var";
		}
	}

	// Generate a preview block that displays the content of expr
	// in the preview box of the node. Expr must be a type that
	// can be casted a Vec4
	/**
		Displays `expr` (converted to a color) in the preview of the current node.
	**/
	public function addPreview(expr: TExpr) {
		if (previewDomain != domain) return;
		var selector = getGlobalInput(PreviewSelect);
		var outputColor = getOrAllocateGlobal(PreviewColor);

		var previewExpr = makeAssign(makeVar(outputColor), convertToType(TVec(4, VFloat), expr));
		var ifExpr = makeIf(makeEq(selector, makeInt(currentPreviewId)), previewExpr);
		preview = ifExpr;
	}

	/**
		Returns `sourceExpr` converted to a float or float vector type: repeated, extended (alpha `1`) or truncated. Booleans become `0` or `1`.
	**/
	public static function convertToType(targetType: hxsl.Ast.Type, sourceExpr: TExpr) : TExpr {

		if (sourceExpr.t.equals(targetType))
			return sourceExpr;

		if (sourceExpr.t.match(TBool)) {
			sourceExpr = makeIf(sourceExpr, makeFloat(1.0), makeFloat(0.0), null, TFloat);
		}

		var sourceSize = switch (sourceExpr.t) {
			case TFloat: 1;
			case TVec(size, VFloat): size;
			default:
				throw "Unsupported source type " + sourceExpr.t;
		}

		var targetSize = switch (targetType) {
			case TFloat: 1;
			case TVec(size, VFloat): size;
			default:
				throw "Unsupported target type " + targetType;
		}

		var delta = targetSize - sourceSize;
		if (delta == 0)
			return sourceExpr;
		if (delta > 0) {
			var args = [];
			if (sourceSize == 1) {
				for (i in 0...targetSize) {
					args.push(sourceExpr);
				}
			}
			else {
				args.push(sourceExpr);
				for (i in 0...delta) {
					// Set alpha to 1.0 by default on upcasts casts
					var value = ((sourceSize + i) == 3) ? 1.0 : 0.0;
					args.push({e : TConst(CFloat(value)), p: sourceExpr.p, t: TFloat});
				}
			}
			var global : TGlobal = switch (targetSize) {
				case 2: Vec2;
				case 3: Vec3;
				case 4: Vec4;
				default: throw "unreachable";
			}
			return {e: TCall({e: TGlobal(global), p: sourceExpr.p, t:targetType}, args), p: sourceExpr.p, t: targetType};
		}
		if (delta < 0) {
			var swizz : Array<hxsl.Ast.Component> = [X,Y,Z,W];
			swizz.resize(targetSize);
			return {e: TSwiz(sourceExpr, swizz), p: sourceExpr.p, t: targetType};
		}
		throw "unreachable";
	}

	/**
		Adds a function to the shader.
	**/
	public function addFunction(e: TFunction) {
		if (functions.get(e.ref.id) == null) {
			functions.set(e.ref.id, e);
		}
	}

	/**
		Adds an expression to the shader.
	**/
	public function addExpr(e: TExpr) {

		if (explicitVarNames == true) {
			// Patch variable names to be unique in the scope
			function rec(e: TExpr) {
				trace(e.e.getName());
				switch(e.e) {
					case TVarDecl(v, init):
						var shortName = std.Type.getClassName(std.Type.getClass(node)).split(".").pop();
						shortName = shortName.substr(0,1).toLowerCase() + shortName.substr(1);
						v.name = '${shortName}_${node.id}_${v.name}';
					default:
				}
				return e.map(rec);
			};
			e = rec(e);
		}

		expressions.push(e);
	}

	/**
		Sets the expression of an output of the current node. Throws if its type is not the declared one.
	**/
	public function setOutput(id: Int, e: TExpr) {
		var expectedType = getType(nodeOutputInfo[id].type);
		if (!expectedType.equals(e.t))
			throw "Output " + id + " has different type than declared";
		outputs[id]=e;
	}

	/**
		Returns the HXSL type of a node type, with the generics resolved.
	**/
	public function getType(type: SgType) : Type {
		switch (type) {
			case SgGeneric(id, consDtraint):
				return getGenericType(id);
			default:
				return inline sgTypeToType(type);
		}
	}

	/**
		Returns the resolved type of a generic.
	**/
	public inline function getGenericType(id: Int) {
		return genericTypes[id];
	}

	/**
		Returns the expression connected to the input `id`, or its default value (InputInfo.def) if nothing is connected.
		If the input is inlineEditable, the value set by the user on the node is used instead of the default.
		Returns null if the input has no default value.
	**/
	public function getInput(id: Int) : Null<TExpr> {
		var input = nodeInputExprs[id];
		var info = nodeInputInfo[id];
		var inputType = getType(info.type);
		if (input != null) {
			return convertToType(inputType, input);
		}

		switch(info.def) {
			case NoDefault:
				return null;
			case Const(f):
				var value = info.inlineEditable ? @:privateAccess node.getDef(info.name, f) : f;
				return convertToType(inputType, makeFloat(value));
			case ConstBool(b):
				return makeExpr(TConst(CBool(b)), TBool);
			case Var(name):
				var globalId = Variables.getGlobalNameMap().get(name);
				if (globalId == null)
					return null;
				return getGlobalInput(globalId);
		}
	}

	/**
		API used by ShaderGraphGenContext
	**/
	function initForNode(node: ShaderNode, nodeInputExprs: Array<TExpr>) {
		nodeInputInfo = node.getInputs();
		nodeOutputInfo = node.getOutputs();
		this.node = node;
		this.nodeInputExprs = nodeInputExprs;

		outputs.resize(0);
		genericTypes.resize(0);
		preview = null;

		for (inputId => input in nodeInputInfo) {
			switch(input.type) {
				case SgGeneric(id, constraint):
					genericTypes[id] = constraint(nodeInputExprs[inputId]?.t, genericTypes[id]);
				default:
			}
		}

		currentPreviewId = node.id + 1;
	}

	function finishNode() {
		if (nodeOutputInfo.length != outputs.length) {
			throw "Missing outputs for node";
		}
		if (preview != null) {
			addExpr(preview);
		}
	}

	var node : ShaderNode = null;

	var currentPreviewId: Int = -1;
	var expressions: Array<TExpr> = [];
	var functions: Map<Int, TFunction> = [];
	var outputs: Array<TExpr> = [];
	var preview : TExpr = null;
	var nodeOutputInfo: Array<OutputInfo>;


	var genericTypes: Array<Type> = [];
	var nodeInputExprs : Array<TExpr>;

	var nodeInputInfo : Array<InputInfo>;
	var globalVars: Map<String, ShaderGraph.ExternVarDef> = [];
	var shaderVariables: Map<Int, {variable: TVar, isInit: Bool}> = [];
}
