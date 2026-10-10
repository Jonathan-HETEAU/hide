package hide;

/**
	A jQuery element (`Dynamic` on HashLink).
**/
typedef Element = #if hl Dynamic #else js.jquery.JQuery #end;
/**
	A jQuery event (`Dynamic` on HashLink).
**/
typedef Event = #if hl Dynamic #else js.jquery.Event #end;
/**
	An HTML element (`Dynamic` on HashLink).
**/
typedef HTMLElement = #if hl Dynamic #else js.html.Element #end;

function getVal( e : Element ) {
	return #if js e.val() #else e.getValue() #end;
}