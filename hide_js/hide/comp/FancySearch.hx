package hide.comp;

/**
	Ranges of a text matching a search: start and end positions, in pairs.
**/
typedef SearchRanges = Array<Int>;

/**
	The words of a search.
**/
typedef SearchQuery = Array<String>;
/**
	A search bar component.
**/
class FancySearch extends hide.comp.Component {
	var open = false;
	var input : js.html.InputElement;

	var thresholdRegister : Int = 2000; // ms
	var currentRegisterSignature : Int = 0;
	var searchHistory : Array<String> = [];
	var searchIdx : Int = 0;

	/**
		Creates a search bar, in `target` if set.
	**/
	public override function new(parent: Element = null, target: Element = null) {
		var el = new hide.Element('
			<fancy-search>
				<input type="text" class="search-field">
				<fancy-icon class="search-icon fi-search"></fancy-icon>
			</fancy-search>
		');
		if (target != null) {
			target.replaceWith(el);
		}
		super(parent, el);

		input = cast element.get(0).querySelector(".search-field");

		input.oninput = (e) -> {
			function register(signature : Int) {
				if (signature != currentRegisterSignature || input.value == "" || searchHistory[searchHistory.length - 1] == input.value)
					return;
				searchHistory.push(input.value);
				searchIdx = searchHistory.length - 1;
			}

			currentRegisterSignature++;
			haxe.Timer.delay(() -> register(currentRegisterSignature), thresholdRegister);
			onSearch(e.target.value, false);
		}

		input.onchange = (e) -> {
			onSearch(e.target.value, true);
		}

		input.onkeydown = (e) -> {
			var down = e.keyCode == 40;
			var up = e.keyCode == 38;

			if (!down && !up)
				return;

			e.preventDefault();
			e.stopPropagation();

			if (searchHistory.length == 0)
				return;

			if (up) {
				searchIdx = Std.int(hxd.Math.max(0, searchIdx - 1));
				input.value = searchHistory[searchIdx];
				onSearch(e.target.value, true);
			}

			if (down) {
				searchIdx = Std.int(hxd.Math.min(searchIdx + 1, searchHistory.length));
				input.value = searchIdx == searchHistory.length ? "" : searchHistory[searchIdx];
				onSearch(e.target.value, true);
			}
		}
	}

	/**
		Returns the search text.
	**/
	public function getValue() {
		return input.value;
	}

	/**
		Called when the search changes. `enter` is true when Enter is pressed.
	**/
	public dynamic function onSearch(search: String, enter: Bool) : Void {};

	/**
		Tells if the search has the focus.
	**/
	public function hasFocus() : Bool {
		return js.Browser.document.activeElement ==  input;
	}

	/**
		Removes the focus from the search.
	**/
	public function blur() : Void {
		input.blur();
	}

	/**
		Focuses the search and selects its text.
	**/
	public function focus() : Void {
		input.select();
		input.focus();
	}

	/**
		Returns the words of a search (the whole text if not `spaceIsAnd`), or null if empty.
	**/
	public static function createSearchQuery(search: String, spaceIsAnd: Bool = true) : SearchQuery {
		if (search == null || search == "")
			return null;

		return if (spaceIsAnd) {
			StringTools.trim(search).split(" ");
		} else {
			[search];
		}
	}

	/**
		Returns the ranges of a text matching all the words of a query, or null if one doesn't match.
	**/
	public static function computeSearchRanges(haystack: String, query: SearchQuery, caseSensitive: Bool = false) : SearchRanges {
		if (query == null)
			return null;

		var ranges : SearchRanges = [];
		for (needle in query) {
			var startPos = ranges[0] == 0 ? ranges[1] : 0;
			while(true) {
				var pos = haystack.toLowerCase().indexOf(needle, startPos);
				if (pos < 0)
					return null;

				// skip the ranges we already matched
				for (i in 0...ranges.length>>1) {
					if (pos >= ranges[2*i] && pos < ranges[2*i+1]) {
						startPos = ranges[2*i+1];
						continue;
					}
				}

				ranges.push(pos);
				ranges.push(pos + needle.length);
				break;
			}
		}
		if (ranges.length==0)
			return null;

		// Sort the array of ranges
		for (i in 0...ranges.length >> 1) {
			for (j in i*2...ranges.length >> 1) {
				if (ranges[i*2] > ranges[j*2]) {
					var swap1 = ranges[i*2];
					var swap2 = ranges[i*2+1];

					ranges[i*2] = ranges[j*2];
					ranges[i*2+1] = ranges[j*2+1];

					ranges[j*2] = swap1;
					ranges[j*2+1] = swap2;
				}
			}
		}
		return ranges;
	}

	/**
		Returns the text with the matching ranges wrapped in tokens (a highlight span by default).
	**/
	public static function splitSearchRanges(string: String, ranges: SearchRanges, openToken: String = "<span class='search-hl'>", closeToken: String = "</span>") : String {
		var lastPos = 0;
		var finalName = "";
		for (i in 0...(ranges.length>>1)) {
			var index = i * 2;
			var len = ranges[index+1] - ranges[index];
			if (len > 0) {
				var first = string.substr(lastPos, ranges[index] - lastPos);
				var match = string.substr(ranges[index], len);
				finalName += first + openToken + match + closeToken;
			}
			lastPos = ranges[index+1];
		}
		finalName += string.substr(lastPos);
		return finalName;
	}
}