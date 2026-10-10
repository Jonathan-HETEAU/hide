package hrt.tools;

/**
	An action: applies it, or reverts it if `isUndo`.
**/
typedef Action = (isUndo: Bool) -> Void;

/**
	An undo history of actions.
**/
class Undo {
	var stack : Array<{action: Action, hasDataChanges: Bool}> = [];
	var currentAction : Int = -1;
	var lastSaveUndo: Any = null;

	/** True while onRecord is called **/
	var inRecordStep : Bool = false;

	/**
		Creates an empty history.
	**/
	public function new() {
		reset();
	}

	/**
		Clears the history.
	**/
	public function reset() {
		stack = [];
		currentAction = -1;
		lastSaveUndo = null;
	}

	/**
		Record an action that has already been applied. `info` is an optional payload describing the action, passed to onRecord
	**/
	public function record(action: Action, hasDataChanges: Bool, ?info: Any) {
		stack.splice(currentAction+1, stack.length);
		stack.push({action: action, hasDataChanges: hasDataChanges});
		currentAction = stack.length-1;
		inRecordStep = true;
		try onRecord(info) catch (e) {
			inRecordStep = false;
			throw e;
		}
		inRecordStep = false;
		onAfterChange();
	}

	/**
		Called once when a new action is recorded (not on undo/redo), before onAfterChange.
		mergeWithLast can be called from here to apply the side effects of the recorded action in the same undo step.
	**/
	public dynamic function onRecord(info: Null<Any>) {

	}

	/**
		Merge `action` into the action that was just recorded : `action` is applied immediately, and is then
		undone and redone together with it (redo : recorded action then `action`, undo : `action` then recorded action).
		Must only be called from onRecord.
	**/
	public function mergeWithLast(action: Action) {
		if (!inRecordStep)
			throw "mergeWithLast can only be called from onRecord";

		var entry = stack[currentAction];
		var recorded = entry.action;
		entry.action = (isUndo) -> {
			if (isUndo) {
				action(true);
				recorded(true);
			} else {
				recorded(false);
				action(false);
			}
		};
		action(false);
	}

	/**
		Applies an action and records it. `hasDataChanges` tells if it modifies the saved data.
	**/
	public function run(action: Action, hasDataChanges: Bool, ?info: Any) {
		if (action == null)
			return;
		action(false);
		record(action, hasDataChanges, info);
	}

	/**
		Called after each record, undo or redo.
	**/
	public dynamic function onAfterChange() {

	}

	/**
		Reverts the current action.
	**/
	public function undo() {
		if (canUndo()) {
			stack[currentAction].action(true);
			currentAction--;
			onAfterChange();
		}
	}

	/**
		Tells if there is an action to undo.
	**/
	public function canUndo() {
		return currentAction >= 0;
	}

	/**
		Applies the next action again.
	**/
	public function redo() {
		if (canRedo()) {
			currentAction++;
			stack[currentAction].action(false);
			onAfterChange();
		}
	}

	/**
		Tells if there is an action to redo.
	**/
	public function canRedo() {
		return currentAction < stack.length -1;
	}

	/**
		Return the current active undo function (i.e. the one what would be executed if when calling Undo)
	**/
	public function getCurrentUndo() : Any {
		return stack[currentAction];
	}

	/**
		Tells if an action with data changes was applied since the last `markClean`.
	**/
	public function isDirty() : Bool {
		var current = currentAction;
		while(current >= -1) {
			if (stack[current] != lastSaveUndo && stack[current]?.hasDataChanges == true)
				return true;
			else if (stack[current] == lastSaveUndo)
				return false;
			current --;
		}
		return true;
	}

	/**
		Marks the current state as saved.
	**/
	public function markClean() {
		lastSaveUndo = getCurrentUndo();
	}

	/**
		Returns an action applying several actions (reverted in reverse order).
	**/
	public static function actionFromActions(actions: Array<Action>) : Action {
		return (isUndo) -> {
			for (i in 0...actions.length) {
				var index = isUndo ? actions.length - i - 1 : i;
				actions[index](isUndo);
			}
		}
	}
}
