package hide.comp;

/**
	The kind of a toolbar tool.
**/
enum ToolType {
	/**
		A button.
	**/
	Button(click: Void->Void);
	/**
		A toggle button.
	**/
	Toggle(toggle: Bool->Void);
	/**
		A slider.
	**/
	Range(onChange: Float->Void);
	/**
		A color box.
	**/
	Color(onChange: Int -> Void);
	/**
		A dropdown menu.
	**/
	Menu(items: Array<hrt.ui.HuiMenu.MenuItem>);
	/**
		A button opening a popup, created by `click`.
	**/
	Popup(click: hide.Element -> hide.comp.Popup);
	/**
		Starts a new group of tools.
	**/
	Separator;
}

/**
	The definition of a tool, for `Toolbar.makeToolbar`.
**/
typedef ToolDef = {
	/**
		The tool id, used for the `key.sceneeditor.<id>` shortcut and the saved toggle state.
	**/
	var id : String;
	/**
		The tooltip.
	**/
	var title : String;
	/**
		The kind of tool.
	**/
	var type : ToolType;
	/**
		The icon name.
	**/
	var ?icon : String;
	/**
		CSS applied to the icon.
	**/
	var ?iconStyle : Dynamic;
	/**
		Called on right click (buttons, toggles and popups).
	**/
	var ?rightClick : Void -> Void;
	/**
		The default state of a toggle.
	**/
	var ?defaultValue : Dynamic;
	/**
		Saves the toggle state in the config (default true).
	**/
	var ?saveToggleState : Bool;
}

//

/**
	A toggle button of a toolbar.
**/
typedef ToolToggle = {
	/**
		The toggle id.
	**/
	var id : String;
	/**
		The menu element.
	**/
	var element : Element;
	/**
		Sets the state.
	**/
	function toggle( v : Bool ) : Void;
	/**
		Returns the state.
	**/
	function isDown(): Bool;
	/**
		Sets the function called on right click.
	**/
	function rightClick( v : Void -> Void ) : Void;
	/**
		Applies the saved state again.
	**/
	function refresh() : Void;
}

/**
	A select of a toolbar.
**/
typedef ToolSelect<T> = {
	/**
		The select element.
	**/
	var element : Element;
	/**
		Sets the choices.
	**/
	dynamic function setContent( elements : Array<{ label : String, value : T }> ) : Void;
	/**
		Called when a value is chosen.
	**/
	dynamic function onSelect( v : T ) : Void;
}

/**
	A dropdown menu of a toolbar.
**/
typedef ToolMenu<T> = {
	/**
		The button element.
	**/
	var element : Element;
	/**
		Sets the menu items.
	**/
	function setContent( elements : Array<hrt.ui.HuiMenu.MenuItem> ) : Void;
	/**
		Called when a value is chosen.
	**/
	dynamic function onSelect( v : T ) : Void;
}

/**
	A toolbar component of buttons, toggles, sliders, colors, selects and menus, in groups.
**/
class Toolbar extends Component {

	var curGroup : Element = null;
	var toggles : Array<ToolToggle>;

	/**
		Creates an empty toolbar.
	**/
	public function new(?parent,?el) {
		super(parent,el);
		element.addClass("hide-toolbar2");
		newGroup();
		toggles = new Array<ToolToggle>();
	}

	/**
		Removes all the tools.
	**/
	public function clear() {
		element.empty();
		newGroup();
	}

	function newGroup() {
		curGroup = new Element("<div>").addClass("tb-group").appendTo(element);
	}

	/**
		Starts a new group of tools.
	**/
	public function addSeparator() {
		newGroup();
	}

	/**
		Adds a button.
	**/
	public function addButton( icon : String, ?label : String, ?onClick : Void -> Void, ?rightClick : Void -> Void ) {
		var e = new Element('<div class="button2" title="${label==null ? "" : label}"></div>');
        if (icon != "" && icon != null) {
            e.append(new Element('<div class="icon ico ico-$icon"/>'));
        }
        else {
            if (label != null && label != "") {
                e.append(new Element('<span class="label">$label</span>'));
            }
            e.addClass("menu");
        }
		if( onClick != null ) e.click(function(_) onClick());
		e.appendTo(curGroup);
		if ( rightClick != null )
			e.contextmenu(function(e) { rightClick(); e.preventDefault(); });
		return e;
	}

	/**
		Adds a toggle button. Its state is saved in the config as `sceneeditor.<id>` if `saveToggleState`.
	**/
	public function addToggle( id: String, icon : String, ?title : String, ?label : String, ?onToggle : Bool -> Void, ?defValue = false, ?toggledIcon : String, saveToggleState : Bool = true, canBeUntoggled : Bool = true) : ToolToggle {
		var e = new Element('<div class="button2" id="${id}" title="${title==null ? "" : title}"><div class="icon ico ico-$icon"/></div>');

		if(label != null)
			new Element('<label>$label</label>').appendTo(e);

		function tog(?force: Bool) {
			if (!canBeUntoggled && e.get(0).hasAttribute("checked"))
				return;

			var newStatus = if (force == null) !e.get(0).hasAttribute("checked") else force;

			e.get(0).toggleAttribute("checked", newStatus);
			var checked = e.get(0).hasAttribute("checked");

			if (toggledIcon != null) {
				e.find(".icon").toggleClass('ico-$icon', !checked);
				e.find(".icon").toggleClass('ico-$toggledIcon', checked);
			}

			Ide.inst.currentConfig.set('sceneeditor.${id}', checked);

			if( onToggle != null ) onToggle(checked);
		}

		e.click(function(e) if( e.button == 0 ) tog());
		e.appendTo(curGroup);


		var def = defValue != null ? defValue : false;
		if( (saveToggleState && Ide.inst.currentConfig.get('sceneeditor.${id}', def)) || (!saveToggleState && def) )
			tog();

		if (saveToggleState) {
			onToggle(Ide.inst.currentConfig.get('sceneeditor.${id}', def));
		}

		return {
			id : id,
			element : e,
			toggle : function(b) tog(b),
			isDown: function() return e.get(0).hasAttribute("checked"),
			rightClick : function(f) {
				e.contextmenu(function(e) { f(); e.preventDefault(); });
			},
			refresh : function() {
				if (!saveToggleState)
					return;

				var isCheck = e.get(0).hasAttribute("checked");
				if (isCheck != Ide.inst.currentConfig.get('sceneeditor.${id}', def))
					tog();
			}
		};
	}

	/**
		Adds a color box. Its value is saved in the display state.
	**/
	public function addColor( label : String, onChange : Int -> Void, ?alpha : Bool, ?defValue = 0 ) {
		var button = new Element("<div class='button2'>");
		curGroup.append(button);
		var color = new hide.comp.ColorPicker.ColorBox(button, null, true);
		color.element.height("100%");
		color.element.width("100%");
		color.onChange = function(move) {
			if( !move ) this.saveDisplayState("color:" + label, color.value);
			onChange(color.value);
		};
		var def = getDisplayState("color:" + label);
		if( def == null ) def = defValue;
		color.value = def;
		onChange(def);
		return color;
	}

	/**
		Adds a select with a searchable dropdown. `saveSearchKey` remembers the search.
	**/
	public function addSelect<T>( icon : String, ?label : String, ?saveSearchKey: String ) : ToolSelect<T> {
		var e = new Element('
			<div class="select" title="${label==null ? "" : label}">
				<div class="icon ico ico-$icon"></div>
				<div class="header">
					<span class="label"></span>
					<div class="icon ico ico-caret-right"></div>
				</div>
				<div class="dropdown"/>
			</div>
		');

		var header = e.find(".header");
		var label = header.find(".label");
		var items: Array<hrt.ui.HuiMenu.MenuItem> = [];
		var tool : ToolSelect<T> = {
			element : e,
			setContent : function(_) {},
			onSelect : function(_) {},
		};

		tool.setContent = function(c) {
			for( i in 0...c.length ) {
				items.push({
					label: c[i].label,
					click: () -> {
						label.text(c[i].label);
						tool.onSelect(c[i].value);
					}
				});
			}
		};

		header.click(function(_) {
			var icon = header.find(".icon");
			var visible = icon.hasClass('ico-caret-down');
			visible = !visible;
			icon.toggleClass("ico-caret-right", !visible);
			icon.toggleClass("ico-caret-down", visible);

			if (visible) {
				var menu = ContextMenu.createDropdown(e.find(".dropdown").get(0), items, { search: ContextMenu.SearchMode.Visible, rememberSearchKey: saveSearchKey });
				menu.onClose = () -> {
					icon.toggleClass("ico-caret-right", true);
					icon.toggleClass("ico-caret-down", false);
				};
			}
		});

		e.appendTo(curGroup);
		return tool;
	}

	/**
		Adds a dropdown menu.
	**/
	public function addMenu<T>( icon : String, label : String ) : ToolMenu<T> {
        var menu = new Element('<div class="menu"></div>');
        if (icon != null) {
            menu.append(new Element('<div class="icon ico ico-$icon"></div>'));
        }
        if (label != null && label.length > 0) {
            menu.append(new Element('<span class="label">${label==null ? "" : label}</span>'));
        }
		var menuItems : Array<hrt.ui.HuiMenu.MenuItem> = [];
		var tool : ToolMenu<T> = {
			element : menu,
			setContent : function(c) {
					menuItems = c;
			},
			onSelect : function(_) {},
		};
		menu.get(0).onclick = function(ev : js.html.MouseEvent) : Void {
			if( ev.button == 0 ){
				hide.comp.ContextMenu.createDropdown(menu.get(0), menuItems);
			}
		};
		menu.appendTo(curGroup);
		return tool;
	}

	/**
		Adds a slider.
	**/
	public function addRange( label : String, onChange : Float -> Void, ?defValue = 0., min = 0., max = 1., ?step:Float, ?className:String) {
		var elt = new Element('<input title="$label" type="range" min="$min" max="$max" value="$defValue">');
		if( step != null ) elt.attr("step",""+step);
		var r = new hide.comp.Range(curGroup,elt,className);
		r.onChange = function(_) onChange(r.value);
		return r;
	}

	/**
		Adds a button opening a popup, if it is not already open.
	**/
	public function addPopup(icon: String, title: String, open: hide.Element -> hide.comp.Popup, ?rightClick : Void -> Void) {
		var el = addButton(icon, title, null, rightClick);
		var p: hide.comp.Popup = null;
		el.click(function(e) {
			if (p == null) {
				p = open(el);
				p.onClose = function() {
					p = null;
				}
			}
			else {
				//p.close();
			}
		});
	}

	/**
		Adds tools from definitions. The shortcuts are read from the `key.sceneeditor.<id>` config entries and registered in `keys`.
	**/
	public function makeToolbar(toolsDefs : Array<hide.comp.Toolbar.ToolDef>, ?config : Config, ?keys : hide.ui.Keys) {
		for (tool in toolsDefs) {
			var key = null;
			if (config != null) {
				key = config.get("key.sceneeditor." + tool.id);
			}
			var shortcut = key != null ? " (" + key + ")" : "";
			var el : Element = null;
			switch(tool.type) {
				case Separator:
					addSeparator();
				case Button(f):
					el = addButton(tool.icon, tool.title + shortcut, f, tool.rightClick);
				case Toggle(f):
					var toggle = addToggle(tool.id, tool.icon, tool.title + shortcut, null, f, tool.defaultValue, null, tool.saveToggleState);
					el = toggle.element;
					if( key != null && keys != null)
						keys.register("sceneeditor." + tool.id, () -> toggle.toggle(!toggle.isDown()));
					if (tool.rightClick != null)
						toggle.rightClick(tool.rightClick);
					toggles.push(toggle);
				case Color(f):
					el = addColor(tool.title, f).element;
				case Range(f):
					el = addRange(tool.title, f, 1.).element;
				case Menu(items):
					var menu = addMenu(tool.icon, tool.title);
					menu.setContent(items);
					el = menu.element;
				case Popup(f):
					addPopup(tool.icon, tool.title + shortcut, f, tool.rightClick);
			}

			if (el != null) {
				el.get(0).setAttribute("id", tool.id);
				if(tool.iconStyle != null)
					el.find(".icon").css(tool.iconStyle);
			}
		}
	}

	/**
		Refreshes the toggles.
	**/
	public function refreshToggles() {
		for (tog in toggles)
			tog.refresh();
	}
}