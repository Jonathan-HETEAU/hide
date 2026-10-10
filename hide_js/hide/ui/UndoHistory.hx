package hide.ui;

/**
	A change recorded in an `UndoHistory`.
**/
enum HistoryElement {
	/**
		A field of an object changed from `oldValue`.
	**/
	Field( obj : Dynamic, field : String, oldValue : Dynamic );
	/**
		An index of an array changed from `oldValue`.
	**/
	Array( obj : Array<Dynamic>, field : Int, oldValue : Dynamic );
	/**
		A custom change: `undoRedo(true)` reverts it, `undoRedo(false)` applies it again.
	**/
	Custom( undoRedo : Bool -> Void );
}

private typedef Elt = { h : HistoryElement, id : Int, callb : Void -> Void };

/**
	The undo and redo history of a view.
**/
class UndoHistory {
	/**
		The id of the current state, to tell if the data changed since a save.
	**/
	public var currentID(get, never) : Int;

	var uidGen = 0;
	var undoElts : Array<Elt> = [];
	var redoElts : Array<Elt> = [];
	var maxHistoryCount : Int;

	/**
		Creates a history keeping at most `maxHistoryCount` changes.
	**/
	public function new(maxHistoryCount : Int = 50) {
		this.maxHistoryCount = maxHistoryCount;
	}

	function get_currentID() {
		return undoElts.length == 0 ? 0 : undoElts[undoElts.length - 1].id;
	}

	/**
		Records a change already applied. `callb` is called after undo and redo. A change with `noDataChange` keeps the current id.
	**/
	public function change(h, ?callb, ?noDataChange) {
		if (undoElts.length >= maxHistoryCount)
			undoElts.shift();
		undoElts.push({ h : h, id : noDataChange ? currentID : ++uidGen, callb : callb });
		redoElts = [];
		onChange();
	}

	/**
		Clears the history.
	**/
	public function clear() {
		undoElts = [];
		redoElts = [];
	}

	/**
		Reverts the last change. Returns false if there is none.
	**/
	public function undo() {
		var h = undoElts.pop();
		return handleElement(h, redoElts);
	}

	/**
		Applies the last reverted change again. Returns false if there is none.
	**/
	public function redo() {
		var h = redoElts.pop();
		return handleElement(h, undoElts);
	}

	/**
		Returns a change reverting or applying again all the changes of this history.
	**/
	public function toElement() : HistoryElement {
		return Custom((isUndo : Bool) -> {
			if (isUndo) {
				while(undo()) {};
			} else {
				while(redo()) {};
			}
		});
	}

	/**
		Reverts or applies a change and moves it to the `other` list. Returns false if `e` is null.
	**/
	public function handleElement( e : Elt, other : Array<Elt> ) {
		if( e == null ) return false;
		switch( e.h ) {
		case Field(obj, field, value):
			var curValue = Reflect.field(obj, field);
			other.push({ h : Field(obj, field, curValue), id : e.id, callb : e.callb });
			Reflect.setProperty(obj, field, value);
		case Array(arr, index, value):
			var curValue = arr[index];
			other.push({ h : Array(arr, index, curValue), id : e.id, callb : e.callb });
			arr[index] = value;
		case Custom(f):
			other.push(e);
			f(other == redoElts);
		}
		if( e.callb != null ) e.callb();
		onChange();
		return true;
	}

	/**
		Called after each change, undo or redo.
	**/
	public dynamic function onChange() {
	}

}