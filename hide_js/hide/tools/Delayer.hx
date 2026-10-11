package hide.tools;

/**
	Calls a function once per queued item on the next animation frame, ignoring duplicates.
**/
class Delayer<Item> {
	var queuedItems : Map<{}, Bool> = [];
	var callback : (Item) -> Void;

	/**
		Creates a delayer calling `callback`.
	**/
	public function new(callback: (Item) -> Void) {
		this.callback = callback;
	}

	/**
		Queues an item.
	**/
	public function queue(item: Item) {
		var empty = !queuedItems.iterator().hasNext();
		queuedItems.set(cast item, true);
		if (empty) {
			js.Browser.window.requestAnimationFrame((_) -> processQueue());
		}
	}

	function processQueue() {
		for (item => _ in queuedItems) {
			callback((cast item: Item));
		}
		queuedItems.clear();
	}
}