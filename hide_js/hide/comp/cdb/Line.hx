package hide.comp.cdb;

/**
	A line of a CDB table.
**/
class Line extends Component {

	/**
		The index of the line in the sheet.
	**/
	public var index : Int;
	/**
		The table of the line.
	**/
	public var table : Table;
	/**
		The data of the line.
	**/
	public var obj(get, never) : Dynamic;
	/**
		The cells.
	**/
	public var cells : Array<Cell>;
	/**
		The shown columns.
	**/
	public var columns : Array<cdb.Data.Column>;
	/**
		The open sub table, or null.
	**/
	public var subTable : SubTable;
	/**
		The result of the validation function of the sheet, or null.
	**/
	public var status : Formulas.ValidationResult;
	/**
		True if the line is hidden by the search filters.
	**/
	public var filtered : Bool = false;

	/**
		Creates a line of a table.
	**/
	public function new(table, columns, index, root) {
		super(null,root);
		this.table = table;
		this.index = index;
		this.columns = columns;
		cells = [];
	}

	inline function get_obj() return table.sheet.lines[index];


	/**
		Returns the id of the line, or null.
	**/
	public function getId(): String {
		var columns = table.displayMode == Table ? columns : table.sheet.columns;
		var obj = obj;
		for( c in columns ) {
			if( c.type == TId )
				return Reflect.field(obj, c.name);
		}
		return null;
	}

	/**
		Builds the cells of the line.
	**/
	public function create() {
		filtered = false;
		var view = table.view;
		element.get(0).classList.remove("hidden");
		var id: String = null;
		for( c in columns ) {
			var e = #if hl ide.createElement("td") #else js.Browser.document.createTableCellElement() #end;
			e.classList.add("c");
			this.element.get(0).appendChild(e);
			var cell = new Cell(e, this, c);
			if( c.type == TId ) {
				id = cell.value;
				if( view != null && view.forbid != null && view.forbid.indexOf(cell.value) >= 0 )
					element.get(0).classList.add("hidden");
			}
		}

		var sheetsToCount: Array<String> = ide.currentConfig.get("cdb.indicateRefs");
		var countRefs = sheetsToCount.contains(table.sheet.name);
		if( countRefs && id != null ) {
			var refCount = table.editor.getReferences(id, false, table.sheet).length;
			element.get(0).classList.toggle("has-ref", refCount > 0);
			element.get(0).classList.toggle("no-ref", refCount == 0);
			element.get(0).classList.add("ref-count-" + refCount);
		}
		syncClasses();
	}

	/**
		Updates the style of the line and validates it.
	**/
	public function syncClasses() {
		var obj = obj;
		element.get(0).classList.toggle("locIgnored", Reflect.hasField(obj,cdb.Lang.IGNORE_EXPORT_FIELD));
		validate();
	}

	/**
		Returns the path or title of the separator group of the root line, or null.
	**/
	public function getGroupID() {
		var line = getRootLine();
		var t = line.table;
		for( i in 0...t.sheet.separators.length ) {
			var sep = t.sheet.separators[t.sheet.separators.length - 1 - i];
			if( sep.index <= line.index ) {
				if( sep.path != null )
					return sep.path;
				if( sep.title != null )
					return sep.title;
			}
		}
		return null;
	}

	/**
		Returns the line of the root table containing this line.
	**/
	public function getRootLine() {
		var line = this;
		var t = table;
		while( t.parent != null ) {
			line = Std.downcast(t, SubTable).cell.line;
			t = t.parent;
		}
		return line;
	}

	/**
		Returns the constants of the line for the script checker: `cdb.objID`, `cdb.groupID` and the objects of the line and its parents.
	**/
	public function getConstants( objId ) {
		var consts = [
			"cdb.objID" => objId,
			"cdb.groupID" => getGroupID(),
		];
		var t = table;
		var line = this;
		while( t != null ) {
			consts.set("cdb."+t.sheet.name.split("@").join("."), line.obj);
			line = Std.downcast(t, SubTable)?.cell?.line;
			t = t.parent;
		}
		return consts;
	}

	/**
		Evaluates the formulas of the cells.
	**/
	public function evaluate() {
		for( c in cells )
			@:privateAccess c.evaluate();
	}

	/**
		Closes the sub table and hides the line.
	**/
	public function hide() {
		if( subTable != null ) {
			subTable.close();
			subTable = null;
		}
		cells = [];
		element.children('td.c').remove();
		element.addClass("hidden");
	}

	/**
		Runs the validation function of the sheet and updates the line status.
	**/
	public function validate() {
		if (table.errors.get(this) != null) {
			table.errors.remove(this);
			table.errorCount--;
		}
		if (table.warnings.get(this) != null) {
			table.warnings.remove(this);
			table.warningCount--;
		}

        status = table.editor.formulas.validateLine(table.getRealSheet(), index);
		if(status == null) {
			table.refreshLinesStatus();
			return;
		}

        element.removeClass("validation-error");
        element.removeClass("validation-warning");
		element.attr("title", null);

		switch(status) {
			case Error(msg):
				element.addClass("validation-error");
				element.attr("title", "Error: " + msg);
				table.errorCount++;
				table.errors.set(this, true);
			case Warning(msg):
				element.addClass("validation-warning");
				element.attr("title", "Warning: " + msg);
				table.warningCount++;
				table.warnings.set(this, true);
			default:
		}

		table.refreshLinesStatus();
    }
}
