package hide.view;

/**
	The about view.
**/
class About extends hide.ui.View<{}> {

	/**
		Creates the view.
	**/
	public function new(state) {
		super(state);
	}

	override function onDisplay() {
		var buildDate = "";
		element.html('
		<p>
			Heaps IDE<br/>
			Build date: $buildDate
		</p>
		');
	}

	static var _ = hide.ui.View.register(About, { position : Bottom });

}