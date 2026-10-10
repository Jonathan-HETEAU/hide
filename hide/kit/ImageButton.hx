package hide.kit;

#if domkit

/**
	A button with an icon and no label.
**/
class ImageButton extends Button {
	/**
		Creates a button with an icon.
	**/
	public function new(parent: Element, id: String, image: String) {
		super(parent, id, "");
		this.image = image;
	}
}

#end