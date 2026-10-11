package hide.comp;

/**
	The browser `ResizeObserver` API.
**/
@:native("ResizeObserver")
extern class ResizeObserver {
    /**
    	Creates an observer calling `callback` when the observed elements are resized.
    **/
    function new(callback: (entries : Array<Dynamic>, self: ResizeObserver) -> Void);

    /**
        Unobserves all observed Element targets of a particular observer.
    **/
    function disconnect() : Void;

    /**
        Initiates the observing of a specified Element.
    **/
    function observe(element: js.html.Element) : Void;

    /**
        Ends the observing of a specified Element.
    **/
    function unobserve(target: js.html.Element) : Void;
}