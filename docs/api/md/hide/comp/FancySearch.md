# hide.comp.FancySearch

**class** · package [`hide.comp`](README.md) · source [`hide_js/hide/comp/FancySearch.hx`](../../../../../hide_js/hide/comp/FancySearch.hx) · available on editor (js)

Extends: [`hide.comp.Component`](Component.md)

A search bar component.

## Constructor

### new

```haxe
function new(?parent:Null<hide.Element>, ?target:Null<hide.Element>):Void
```

Creates a search bar, in `target` if set.

## Static methods

### createSearchQuery

```haxe
static function createSearchQuery(search:String, ?spaceIsAnd:Bool = true):SearchQuery
```

Returns the words of a search (the whole text if not `spaceIsAnd`), or null if empty.

### computeSearchRanges

```haxe
static function computeSearchRanges(haystack:String, query:SearchQuery, ?caseSensitive:Bool = false):SearchRanges
```

Returns the ranges of a text matching all the words of a query, or null if one doesn't match.

### splitSearchRanges

```haxe
static function splitSearchRanges(string:String, ranges:SearchRanges, ?openToken:String = "<span class='search-hl'>", ?closeToken:String = "</span>"):String
```

Returns the text with the matching ranges wrapped in tokens (a highlight span by default).

## Methods

### getValue

```haxe
function getValue():String
```

Returns the search text.

### onSearch

```haxe
dynamic function onSearch(search:String, enter:Bool):Void
```

Called when the search changes. `enter` is true when Enter is pressed.

### hasFocus

```haxe
function hasFocus():Bool
```

Tells if the search has the focus.

### blur

```haxe
function blur():Void
```

Removes the focus from the search.

### focus

```haxe
function focus():Void
```

Focuses the search and selects its text.

## Inherited members

- from [`hide.comp.Component`](Component.md): `componentName`, `element`, `saveDisplayKey`, `remove`
