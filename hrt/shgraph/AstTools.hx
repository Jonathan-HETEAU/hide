package hrt.shgraph;

using hxsl.Ast;


/**
	Helpers to build HXSL expressions (`hxsl.Ast`).
**/
class AstTools {

	/**
		The empty position used by the expressions.
	**/
	public static var defPos : Position = {file: "", min: 0, max: 0};

	/**
		Returns an empty position.
	**/
	public inline static function makePos() : Position {
		return {file: "", min: 0, max: 0};
	}

	/**
		Returns `if (cond) inner else other`.
	**/
	public inline static function makeIf(cond: TExpr, inner: TExpr, ?other: TExpr, ?pos: Position, type: Type = TVoid) : TExpr {
		return makeExpr(
			TIf(
				cond,
				inner,
				other
			),
			type,
			pos ?? defPos
		);
	}

	/**
		Returns the constant of an int, float or float vector type for a value (`0` if invalid). Throws for other types.
	**/
	public static function makeDynamic(type: Type, value: Dynamic) : TExpr {
		switch(type) {
			case TInt:
				return makeInt(value is Int ? cast value : 0);
			case TFloat:
				return makeFloat(value is Float ? cast value : 0);
			case TVec(size, VFloat):
				return makeVec((value is Array && value.length == size) ? cast value : [for (_ in 0...size) 0.0]);
			default:
				throw "unsupported type " + type;
		}
	}

	/**
		Returns `to = from`.
	**/
	public inline static function makeAssign(to: TExpr, from: TExpr) : TExpr {
		return makeExpr(TBinop(OpAssign, to, from), to.t);
	}

	/**
		Returns an int constant.
	**/
	public inline static function makeInt(int: Int) : TExpr {
		return makeExpr(TConst(CInt(int)), TInt);
	}

	/**
		Returns a float constant.
	**/
	public inline static function makeFloat(float: Float) : TExpr {
		return makeExpr(TConst(CFloat(float)), TFloat);
	}

	/**
		Returns a vector constant of 2 to 4 floats.
	**/
	public inline static function makeVec(values : Array<Float>) : TExpr {
		var ctor = switch(values.length) {
			case 2: Vec2;
			case 3: Vec3;
			case 4: Vec4;
			default: throw "Can't create a vector of size " + values.length;
		}
		var params = [for (v in values) makeExpr(TConst(CFloat(v)), TFloat)];
		return makeGlobalCall(ctor, params, TVec(values.length, VFloat));
	}

	/**
		Returns a vector of 2 to 4 expressions (with the constructor `ctor`, or `vec2` to `vec4`).
	**/
	public inline static function makeVecExpr(values: Array<TExpr>, ?ctor: TGlobal) : TExpr {
		var ctor = ctor ?? switch(values.length) {
			case 2: Vec2;
			case 3: Vec3;
			case 4: Vec4;
			default: throw "Can't create a vector of size " + values.length;
		}
		return makeGlobalCall(ctor, values, TVec(values.length, VFloat));
	}

	/**
		Returns a variable expression.
	**/
	public inline static function makeVar(v: TVar, ?pos: Position) : TExpr {
		return makeExpr(TVar(v), v.type, pos);
	}

	/**
		Returns a swizzle of `e`.
	**/
	public inline static function makeSwizzle(e: TExpr, components: Array<Component>) {
		return makeExpr(TSwiz(e, components), components.length == 1 ? TFloat : TVec(components.length, VFloat));
	}

	/**
		Returns a variable declaration.
	**/
	public inline static function makeVarDecl(v: TVar, ?init: TExpr) : TExpr {
		return makeExpr(TVarDecl(v, init), v.type);
	}

	/**
		Returns an expression.
	**/
	public inline static function makeExpr(def: TExprDef, type: Type, ?pos: Position) : TExpr {
		return {e: def, p: (pos ?? defPos), t: type}
	}

	// Expect a.t == b.t
	/**
		Returns `a op b`, of the type of `a`.
	**/
	public inline static function makeBinop(a: TExpr, op: Binop, b: TExpr) : TExpr {
		return makeExpr(TBinop(op, a, b), a.t);
	}

	/**
		Returns `a == b`.
	**/
	public inline static function makeEq(a: TExpr, b: TExpr) : TExpr {
		return makeExpr(TBinop(OpEq, a, b), TBool);
	}

	/**
		Returns a call to a HXSL global function.
	**/
	public inline static function makeGlobalCall(global: TGlobal, args: Array<TExpr>, retType: Type) : TExpr {
		return makeExpr(TCall(makeExpr(TGlobal(global), TVoid), args), retType);
	}

	/**
		Returns the full name of a variable, as `parent.name`.
	**/
	public static function getFullName(tvar: TVar) : String {
		var name = tvar.name;
		if (tvar.parent != null)
			name = getFullName(tvar.parent) + "." + name;
		return name;
	}

	/**
		Removes a variable from its parent struct.
	**/
	public static function removeFromParent(tvar: TVar) : Void {
		var parent = tvar.parent;
		if (parent != null) {
			switch(parent.type) {
				case TStruct(arr):
					arr.remove(tvar);
					if (arr.length == 0) {
						removeFromParent(parent);
					}
				default: throw "parent must be a TStruct";
			}
		}
		tvar.parent = null;
	}
}