package hide.comp;

/**
	HTML helpers.
**/
class JsTools {
    /**
    	Copies the attributes of an element to another.
    **/
    public static function copyAttributes(to : Element, from : Element) {
        var old = from.get(0);
        var our = to.get(0);
        for (i in 0...old.attributes.length) {
            our.attributes.setNamedItem(cast old.attributes.item(i).cloneNode());
        }
    }
}