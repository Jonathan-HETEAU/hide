package hide.comp.cdb;
import hscript.Checker;

/**
	A CDB formula: a function of the formulas file computing a number column from a line.
**/
typedef Formula = {
	/**
		The function name.
	**/
	var name : String;
	/**
		The type name of the sheet (see `Formulas.getTypeName`).
	**/
	var type : String;
	/**
		Computes the value from the line.
	**/
	var call : Dynamic -> Null<Float>;
}

/**
	The result of a line validation function.
**/
enum ValidationResult {
	/**
		The line is valid.
	**/
	Ok;
	/**
		The line has an error.
	**/
	Error(message: String);
	/**
		The line has a warning.
	**/
	Warning(message: String);
}

/**
	A line validation function of the formulas file: a function whose name starts with `validate`.
**/
typedef ValidationFunction = {
	/**
		The function name.
	**/
	var name : String;
	/**
		The type name of the sheet.
	**/
	var type : String;
	/**
		Validates a line.
	**/
	var call : Dynamic -> ValidationResult;
}


/**
	The access to a sheet given to the formulas, as a global named after the sheet type.
**/
class SheetAccess {
	/**
		The formulas.
	**/
	public var form : Formulas;
	/**
		The type name of the sheet.
	**/
	public var name : String;
	/**
		Iterates over the lines of the sheet.
	**/
	public var all(get,never) : Iterator<Dynamic>;
	var sheetName : String;
	var resolveCache : Map<String,Dynamic>;

	/**
		Creates the access to a sheet type.
	**/
	public function new(form,name) {
		this.form = form;
		this.name = name;
		sheetName = @:privateAccess form.typeNameToSheet(name);
	}

	public function get_all() : Iterator<Dynamic> {
		for( s in @:privateAccess form.editor.base.sheets )
			if( s.name == sheetName ) {
				var index = 0;
				var lines = s.lines;
				var max = lines.length;
				return {
					hasNext : () -> index < max,
					next: () -> @:privateAccess form.remap(lines[index++], s)
				};
			}
		throw "Sheet not found : "+sheetName;
		return null;
	}

	/**
		Returns the line with an id, or null.
	**/
	public function resolve(id:String) : Dynamic {
		if( resolveCache == null )
			resolveCache = new Map();
		var o = resolveCache.get(id);
		if( o != null )
			return o;
		for( s in @:privateAccess form.editor.base.sheets )
			if( s.name == sheetName ) {
				for( o in s.lines )
					if( Reflect.field(o,s.idCol.name) == id ) {
						var o = @:privateAccess form.remap(o, s);
						resolveCache.set(id, o);
						return o;
					}
			}
		throw "Could not resolve "+name+"."+id;
	}

}

/**
	The formulas of a CDB editor, loaded from the `cdb.formulasFile` hscript file.
	Each function taking a line of a sheet type is a formula for that sheet, or a validation function if its name starts with `validate`.
**/
class Formulas {

	var ide : hide.Ide;
	var editor : Editor;
	var formulasFile : String;

	var formulas : Array<Formula> = [];
	var fmap : Map<String, Map<String, Formula>> = [];
	var currentMap : Map<String,Dynamic>;
	var validationFuncs : Map<String, ValidationFunction> = [];

	/**
		Evaluates the formulas.
	**/
	public var enable = true;

	/**
		Loads the formulas of an editor and watches the file.
	**/
	public function new( editor : Editor ) {
		ide = hide.Ide.inst;
		this.editor = editor;
		formulasFile = editor.config.get("cdb.formulasFile");
		ide.fileWatcher.register(formulasFile, reloadFile, @:privateAccess editor.searchBox /* hack to handle end-of-life */);
		load();
	}

	function reloadFile() {
		load();
		evaluateAll();
		editor.save();
		Editor.refreshAll();
	}

	/**
		Evaluates the formulas of all the lines (or only those of `sheet`).
	**/
	public function evaluateAll( ?sheet : cdb.Sheet ) {
		if( !enable )
			return;
		currentMap = new Map();
		for( s in editor.base.sheets ) {
			if( sheet != null && sheet != s ) continue;
			var forms = fmap.get(s.name);
			if( forms == null ) continue;
			var columns = [];
			for( c in s.columns )
				if( c.type == TInt || c.type == TFloat ) {
					var def = Editor.getColumnProps(c).formula;
					columns.push({ name : c.name, def : def, opt : c.opt });
				}
			for( o in s.getLines() ) {
				var omapped : Dynamic = null;
				for( c in columns ) {
					var fname : String = Reflect.field(o,c.name+"__f");
					if( fname == null ) fname = c.def;
					if( fname == null ) continue;
					if( omapped == null )
						omapped = remap(o, s);
					var v = try forms.get(fname).call(omapped) catch( e : Dynamic ) { js.Browser.console.log(e); Math.NaN; }
					if( v == null && c.opt )
						Reflect.deleteField(o, c.name);
					else {
						if( v == null || !Std.isOfType(v, Float) ) v = Math.NaN;
						Reflect.setField(o, c.name, v);
					}
				}
			}
		}
		currentMap = null;
	}

	/**
		Runs the validation function of a sheet on a line. Returns null if the sheet has none.
	**/
	public function validateLine(sheet: cdb.Sheet, lineIndex: Int): ValidationResult {
		var validationFunc = validationFuncs.get(sheet.name);
		if( validationFunc == null ) return null;

		var o = sheet.getLines()[lineIndex];

		currentMap = new Map();
		var omapped = remap(o, sheet);

		try {
			var ret = validationFunc.call(omapped);
			currentMap = null;
			return ret;
		} catch( e : Dynamic ) {
			currentMap = null;
			return Error(Std.string(e));
		}
	}

	function remap( o : Dynamic, s : cdb.Sheet ) : Dynamic {
		var id = s.idCol != null ? Reflect.field(o, s.idCol.name) : null;
		var m : Dynamic = if( id != null ) currentMap.get(s.name+":"+id) else null;
		if( m != null )
			return m;
		m = {};
		if( id != null )
			currentMap.set(s.name+":"+id, m);
		for( c in s.columns ) {
			var v : Dynamic = Reflect.field(o, c.name);
			if( v == null ) continue;
			switch( c.type ) {
			case TRef(other):
				var sother = editor.base.getSheet(other);
				var o2 = sother.index.get(v);
				if( o2 == null ) continue;
				v = remap(o2.obj, sother);
			case TProperties, TPolymorph:
				v = remap(v, s.getSub(c));
			case TList:
				var sub = s.getSub(c);
				v = [for( o in (v:Array<Dynamic>) ) remap(o, sub)];
			case TEnum(values):
				v = Cell.enumValueName(c, values, v);
			case TFlags(flags):
				var fl = {};
				for( i => f in flags )
					if( v&(1<<i) != 0 )
						Reflect.setField(fl,f,true);
				v = fl;
			default:
			}
			Reflect.setField(m, c.name, v);
		}
		if( s.props.hasIndex )
			m.index = s.lines.indexOf(o);
		if( s.props.hasGroup ) {
			var sindex = 0;
			var sheet = s;
			var last = "None";
			// skip separators if at head
			while( true ) {
				var s = sheet.separators[sindex];
				if( s == null || s.index != 0 ) break;
				sindex++;
				if( s.title != null )
					last = s.title;
			}
			var index = s.lines.indexOf(o);
			for( i in sindex...sheet.separators.length ) {
				var s = sheet.separators[i];
				if( s.index > index )
					break;
				if( s.title != null )
					last = s.title;
			}
			m.group = toIdent(last);
		}
		return m;
	}

	/**
		Replaces the characters not allowed in an identifier with `_`.
	**/
	public static function toIdent( name : String ) {
		return ~/[^A-Za-z0-9_]/g.replace(name,"_");
	}

	function load() {
		var code = try sys.io.File.getContent(ide.getPath(formulasFile)) catch( e : Dynamic ) return;
		var parser = new hscript.Parser();
		parser.allowTypes = true;
		var expr = try parser.parseString(code) catch( e : Dynamic ) return;

		var sheetNames = new Map();
		var enumNames = new Map();
		for( s in editor.base.sheets ) {
			var name = getTypeName(s);
			sheetNames.set(name, s);
			if( s.props.hasGroup )
				enumNames.set(name+"_group", true);
			for( c in s.columns ) {
				switch( c.type ) {
				case TEnum(_):
					enumNames.set(name+"_"+c.name, true);
				default:
				}
			}
		}

		var changed = false;
		var refs : Array<SheetAccess> = [];
		function replaceRec( e : hscript.Expr ) {
			switch( e.e ) {
			case EField({ e : EIdent(s) }, name) if( sheetNames.exists(s) ):
				if( name == "all" || name == "resolve" ) {
					var found = false;
					for( r in refs )
						if( r.name == s )
							found = true;
					if( !found )
						refs.push(new SheetAccess(this, s));
				} else if( sheetNames.get(s).idCol != null )
					e.e = EConst(CString(name)); // replace for faster eval
			case EField({ e : EIdent(s) }, name) if( enumNames.exists(s) ):
				e.e = EConst(CString(name)); // replace for faster eval
			default:
				hscript.Tools.iter(e, replaceRec);
			}
		}

		replaceRec(expr);
		while(changed) {
			changed = false;
			replaceRec(expr);
		}

		formulas = [];
		fmap = new Map();
		validationFuncs = new Map();
		var o : Dynamic = { Math : Math, Reflect : Reflect, Ok : ValidationResult.Ok, Error : ValidationResult.Error, Warning : ValidationResult.Warning };
		for( r in refs )
			Reflect.setField(o,r.name, r);

		hscript.JsInterp.defineArrayExtensions();
		var interp = new hscript.JsInterp();
		interp.ctx = o;
		interp.properties = ["all" => true];

		try interp.execute(expr) catch( e : hscript.Expr.Error ) {
			ide.error(formulasFile+": "+e.toString());
			return;
		}
		function browseRec(expr:hscript.Expr) {
			switch( expr.e ) {
			case EBlock(el):
				for( e in el )
					browseRec(e);
			case EFunction([{ t : CTPath([t]) }],_, name) if( name != null && t != null ):
				var value = interp.variables.get(name);
				if( value == null ) return;
				var sname = typeNameToSheet(t);
				if(StringTools.startsWith(name, "validate")) {
					validationFuncs.set(sname, { name : name, type : t, call : value });
				} else {
					var tmap = fmap.get(sname);
					if( tmap == null ) {
						tmap = new Map();
						fmap.set(sname, tmap);
					}
					var f : Formula = { name : name, type : t, call : value };
					tmap.set(name, f);
					formulas.push(f);
				}
			default:
			}
		}
		browseRec(expr);
	}

	/**
		Returns the formulas of a sheet.
	**/
	public function getList( s : cdb.Sheet ) : Array<Formula> {
		var type = getTypeName(s);
		return [for( f in formulas ) if( f.type == type ) f];
	}

	/**
		Returns the formula of a cell, or null.
	**/
	public function get( c : Cell ) : Null<Formula> {
		var tmap = fmap.get(c.table.sheet.name);
		if( tmap == null )
			return null;
		var f = Reflect.field(c.line.obj, c.column.name+"__f");
		if( f == null && c.column.editor != null ) {
			f = (c.column.editor:Editor.EditorColumnProps).formula;
			if( f == null ) return null;
		}
		return tmap.get(f);
	}

	/**
		Sets the formula of a cell, or removes it if null.
	**/
	public function set( c : Cell, f : Formula ) {
		setForValue(c.line.obj, c.table.getRealSheet(), c.column, f == null ? null : f.name);
	}

	/**
		Tells if a cell has a formula (its own or the column default).
	**/
	public inline function has(c:Cell) {
		return Reflect.field(c.line.obj, c.column.name+"__f") != null || (c.column.editor != null && (c.column.editor:Editor.EditorColumnProps).formula != null);
	}

	/**
		Removes the formula of a value.
	**/
	public function removeFromValue( obj : Dynamic, c : cdb.Data.Column ) {
		Reflect.deleteField(obj, c.name+"__f");
	}

	/**
		Sets the formula of a value (or removes it if null), and computes the value.
	**/
	public function setForValue( obj : Dynamic, sheet : cdb.Sheet, c : cdb.Data.Column, fname : String ) {
		var field = c.name+"__f";
		var fdef = Editor.getColumnProps(c).formula;
		if( fname != null && fdef == fname )
			fname = null;
		if( fname == null ) {
			Reflect.deleteField(obj, field);
			var def = editor.base.getDefault(c,sheet);
			if( fdef != null ) {
				var tmap = fmap.get(sheet.name);
				def = try tmap.get(fdef).call(obj) catch( e : Dynamic ) Math.NaN;
			}
			if( def == null ) Reflect.deleteField(obj, c.name) else Reflect.setField(obj, c.name, def);
		} else
			Reflect.setField(obj, field, fname);
	}

	/**
		Calls `f` with a cache of the line accesses, for consecutive evaluations.
	**/
	public function evalBlock<T>( f : Void -> T ) : T {
		var old = currentMap;
		if( currentMap == null ) currentMap = new Map();
		var ret = f();
		currentMap = old;
		return ret;
	}

	function getFormulaNameFromValue( obj : Dynamic, c : cdb.Data.Column ) {
		return Reflect.field(obj, c.name+"__f");
	}

	/**
		Returns the type name of a sheet in the formulas (`a@b` becomes `A_b`).
	**/
	public static function getTypeName( s : cdb.Sheet ) {
		var name = s.name.split("@").join("_");
		name = name.charAt(0).toUpperCase() + name.substr(1);
		return name;
	}

	function typeNameToSheet( t : String ) {
		for( s in editor.base.sheets )
			if( getTypeName(s) == t )
				return s.name;
		return t;
	}

	#if !hl
	/**
		Asks a name and adds a formula for the sheet of a cell to the formulas file.
	**/
	public function createNew( c : Cell, ?onCreated : Formula -> Void ) {
		var name = ide.ask("Formula name");
		if( name == null ) return;
		var t = getTypeName(c.table.sheet);
		edit('function $name( v : $t ) {\n}\n');
	}

	/**
		Opens the formulas file, adding `insert` at its end if set.
	**/
	public function edit( ?insert : String ) {
		var fullPath = ide.getPath(formulasFile);
		var created = false;
		if( !sys.FileSystem.exists(fullPath) ) {
			sys.io.File.saveContent(fullPath,"");
			created = true;
		}
		ide.open("hide.comp.cdb.FormulasView",{ path : formulasFile }, (v) -> {
			var script = @:privateAccess cast(v, hide.view.Script).script;
			if( insert != null ) {
				if( !created ) insert = "\n\n"+insert;
				script.setCode(script.code + insert);
			}
		});
	}
	#end

}

#if !hl
/**
	The script view of the formulas file, with the sheet types for the checker.
**/
class FormulasView extends hide.view.Script {

	override function getScriptChecker() {
		var check = new hide.comp.ScriptEditor.ScriptChecker(config,"cdb formula");
		check.checker.allowAsync = false;

		initFormulaTypes(check);
		check.onInitTypes = () -> initFormulaTypes(check);

		return check;
	}

	function initFormulaTypes(check : hide.comp.ScriptEditor.ScriptChecker) {
		var tstring = check.checker.types.resolve("String");
		var tany = check.checker.types.resolve("Dynamic");
		var treflect = check.checker.types.resolve("Reflect");
		if( treflect != null )
			check.checker.setGlobal("Reflect", treflect);
		check.checker.setGlobal("Ok", tany);
		check.checker.setGlobal("Error", TFun([{t:tstring,name:"message",opt:false}], tany));
		check.checker.setGlobal("Warning", TFun([{t:tstring,name:"message",opt:false}], tany));
	}

	static var _ = hide.ui.View.register(FormulasView);
}
#end