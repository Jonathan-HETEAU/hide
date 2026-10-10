package hrt.prefab;
import hxd.Math;

/**
	A prefab with a 2D transform, creating a 2D object (`local2d`). The base class of the 2D prefabs. The rotation is in degrees.
**/
@:prefabIcon(HuiRes.ui.icons.prefab.object2d)
@:prefabName("Object 2D")
@:prefabCategory("2D")
class Object2D extends Prefab {

	/**
		The 2D object created by `make`, or `null` before.
	**/
	public var local2d : h2d.Object = null;

	/**
		The X position.
	**/
	@:s @:range(0,400) public var x : Float = 0.;
	/**
		The Y position.
	**/
	@:s @:range(0,400) public var y : Float = 0.;
	/**
		The X scale.
	**/
	@:s public var scaleX : Float = 1.;
	/**
		The Y scale.
	**/
	@:s public var scaleY : Float = 1.;

	var scaleArray(get, set) : Array<Float>;

	/**
		The rotation, in degrees.
	**/
	@:s public var rotation : Float = 0.;

	/**
		Tells if the object is visible.
	**/
	@:s public var visible : Bool = true;
	/**
		The blend mode.
	**/
	@:s public var blendMode : h2d.BlendMode = None;

	public inline function get_scaleArray() : Array<Float> {
		return [scaleX, scaleY];
	}

	public inline function set_scaleArray(array: Array<Float>) : Array<Float> {
		scaleX = array[0];
		scaleY = array[1];
		return array;
	}

	/**
		Returns the 2D object of the prefab if it is an `Object2D`, or `null`.
	**/
	public static inline function getLocal2d(prefab: Prefab) : h2d.Object {
		var obj2d = Std.downcast(prefab, Object2D);
		if (obj2d != null)
			return obj2d.local2d;
		return null;
	}

	function makeObject(parent2d: h2d.Object) : h2d.Object {
		return new h2d.Object(parent2d);
	}

	override function makeInstance() {
		local2d = makeObject(shared.current2d);
		if (local2d != null)
			local2d.name = name;
		updateInstance();
	}

	override function make(?sh:hrt.prefab.Prefab.ContextMake) : Prefab {
		makeInstance();

		var old2d = shared.current2d;
		shared.current2d = local2d ?? shared.current2d;

		for (c in children)
			makeChild(c);

		shared.current2d = old2d;

		postMakeInstance();

		return this;
	}

	/**
		Sets the position, scale and rotation from a structure returned by `saveTransform`.
	**/
	public function loadTransform(t) {
		x = t.x;
		y = t.y;
		scaleX = t.scaleX;
		scaleY = t.scaleY;
		rotation = t.rotation;
	}

	/**
		Returns the position, scale and rotation, as a structure.
	**/
	public function saveTransform() {
		return { x : x, y : y, scaleX : scaleX, scaleY : scaleY, rotation : rotation };
	}

	/**
		Sets the position, scale and rotation from a structure.
	**/
	public function setTransform(t) {
		x = t.x;
		y = t.y;
		scaleX = t.scaleX;
		scaleY = t.scaleY;
		rotation = t.rotation;
	}

	/**
		Applies the position, scale and rotation to the object.
	**/
	public function applyTransform( o : h2d.Object ) {
		o.x = x;
		o.y = y;
		o.scaleX = scaleX;
		o.scaleY = scaleY;
		o.rotation = Math.degToRad(rotation);
	}

	override function updateInstance(?propName : String ) {
		var o = local2d;
		o.x = x;
		o.y = y;
		if(propName == null || propName.indexOf("scale") == 0) {
			o.scaleX = scaleX;
			o.scaleY = scaleY;
		}
		if(propName == null || propName.indexOf("rotation") == 0)
			o.rotation = Math.degToRad(rotation);
		if(propName == null || propName == "visible")
			o.visible = visible;

		if(propName == null || propName == "blendMode")
			if (blendMode != null) o.blendMode = blendMode;
	}

	override function getDefaultEditorName() {
		return type == "object2D" ? "group2D" : super.getDefaultEditorName();
	}

	/**
		Returns the local transform matrix (in `m` if given).
	**/
	public function getTransformMatrix(m : h2d.col.Matrix = null) : h2d.col.Matrix {
		if (m == null)
			m = new h2d.col.Matrix();
		m.initScale(scaleX, scaleY);
		m.rotate(hxd.Math.degToRad(rotation));
		m.translate(x, y);
		return m;
	}

	static var tmpPoint = new h2d.col.Point();
	static var tmpMat = new h2d.col.Matrix();
	/**
		Sets the position, scale and rotation from a matrix.
	**/
	public function setTransformMatrix(m: h2d.col.Matrix) : Void {

		m.getScale(tmpPoint);
		scaleX = tmpPoint.x;
		scaleY = tmpPoint.y;

		tmpMat.initScale(1.0/scaleX, 1.0/scaleY);
		tmpMat.multiply(tmpMat, m);
		rotation = hxd.Math.radToDeg(hxd.Math.atan2(tmpMat.b, tmpMat.a));
		x = m.x;
		y = m.y;
		updateInstance();
	}

	override function edit2(ctx:hrt.prefab.EditContext2) {
		var enumList = haxe.EnumTools.createAll(h2d.BlendMode);
		var selectBlendMode = [for( e in enumList ) { value : e, label : e.getName() }];
		ctx.build(
			<root>
				<category("Position")>
					<line label="Position">
						<slider field={x}/>
						<slider field={y}/>
					</line>
					<slider-group label="Scale">
						<slider field={scaleX} label="X" default={1.0}/>
						<slider field={scaleY} label="Y" default={1.0}/>
					</slider-group>
					<slider field={rotation} min="-180" max="180" wrap/>
				</category>
				<category("Display")>
					<checkbox field={visible}/>
					<select(selectBlendMode) field={blendMode}/>
				</category>
			</root>
		);
	}

	override function editorRemoveInstanceObjects() : Void {
		if (local2d != null) {
			local2d.remove();
			local2d = null;
		}
		super.editorRemoveInstanceObjects();
	}

	#if editor
	override function getHideProps() : hide.prefab.HideProps {
		// Check children
		return {
			icon : children == null || children.length > 0 ? "folder-open" : "genderless",
			name : "Group 2D"
		};
	}

	override function edit( ctx : hide.prefab.EditContext ) {
		var props = new hide.Element('
			<div class="group" name="Position">
				<dl>
					<dt>X</dt><dd><input type="range" min="-100" max="100" value="0" field="x"/></dd>
					<dt>Y</dt><dd><input type="range" min="-100" max="100" value="0" field="y"/></dd>
					<dt>Scale</dt><dd><input type="multi-range" min="0" max="5" value="0" field="scaleArray" data-subfields="X,Y"/></dd>
					<dt>Rotation</dt><dd><input type="range" min="-180" max="180" value="0" field="rotation" /></dd>
				</dl>
			</div>
			<div class="group" name="Display">
				<dl>
					<dt>Visible</dt><dd><input type="checkbox" field="visible"/></dd>
					<dt>Blend Mode</dt><dd><select field="blendMode"/></dd></dd>
				</dl>
			</div>
		');
		ctx.properties.add(props, this, function(pname) {
			ctx.onChange(this, pname);
		});
	}

	#end

	static var _ = Prefab.register("object2D", Object2D);

}