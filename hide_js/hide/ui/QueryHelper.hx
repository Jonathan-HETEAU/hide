package hide.ui;

/**
	A shortcut to create elements: `J(...)` is `new hide.Element(...)`.
**/
#if js extern #end class QueryHelper {
	/**
		Returns `new hide.Element(exprs)`.
	**/
	macro public static function J(exprs:Array<haxe.macro.Expr>) {
		return macro new hide.Element($a{exprs});
	}
}