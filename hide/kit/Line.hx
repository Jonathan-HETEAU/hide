package hide.kit;

#if domkit

/**
	A line, with a label and content.
**/
class Line extends Element {
	/**
		The label.
	**/
	@:attr public var label: String;
	/**
		Shows the content under the label.
	**/
	@:attr public var multiline: Bool = false;
	/**
		Takes the whole width, without label column.
	**/
	@:attr public var full: Bool = false;

	var decorationsLeft: Array<Element> = null;

	/**
		The label element.
	**/
	public var labelElement: NativeElement;
	/**
		The content element of a multiline line.
	**/
	public var multilineElement: NativeElement;
	override function get_nativeContent():NativeElement {
		return multilineElement ?? native;
	}


	override function makeSelf():Void {
		if (!full) {
			labelElement = NativeElement.create("kit-label");

			if (decorationsLeft != null) {
				for (deco in decorationsLeft) {
					deco.make(false);
					labelElement.addChild(deco.native);
					deco.native.addClass("deco-left");
				}

				labelElement.addChild(NativeElement.create("kit-push"));
			}

			if (label != null && label.length > 0) {
				#if js
				var span = js.Browser.document.createSpanElement();
				span.innerText = label;
				#elseif hui
				var span = NativeElement.create("kit-span");
				new hrt.ui.HuiText(label, span);
				#else
				var span = null;
				#end
				labelElement.addChild(span);
			}

			if (!multiline) {
				stealChildLabel(labelElement);
			}
		}

		var me = null;
		#if js
		if (multiline) {
			me = NativeElement.create("kit-multiline");
		}
		#elseif hui
		me = new hrt.ui.HuiLine();
		#end

		setupPropLine(labelElement, me, false);

		this.multilineElement = me;
	}

	/**Add a widget to the line that appears at the left edge of the property panel **/
	public function addDecorationLeft(element: Element) : Void {
		decorationsLeft ??= [];
		decorationsLeft.push(element);
		element.parent = this;
		element.root = this.root;
	}
}

#end