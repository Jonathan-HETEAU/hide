package hide.prefab.terrain;
import h3d.shader.pbr.AlphaMultiply;
import h3d.shader.FixedColor;
import h3d.mat.Stencil;
using Lambda;
import hxd.Key as K;

/**
	A terrain brush: a texture stamped along the stroke.
**/
class Brush {
	/**
		The brush name.
	**/
	public var name : String;
	/**
		The brush size, in world units.
	**/
	public var size : Float;
	/**
		The brush strength (from 0 to 1). In `Set` mode, also the target height.
	**/
	public var strength : Float;
	/**
		The distance between two stamps of the stroke.
	**/
	public var step : Float;
	/**
		The brush texture.
	**/
	public var tex : h3d.mat.Texture;
	/**
		The bitmap drawing the brush texture.
	**/
	public var bitmap : h2d.Bitmap;
	/**
		The path of the brush texture.
	**/
	public var texPath : String;
	/**
		The index of the painted surface.
	**/
	public var index : Int = -1;
	/**
		The brush mode.
	**/
	public var brushMode : BrushMode;
	/**
		True on the first frame of a stroke.
	**/
	public var firstClick = false;

	/**
		Creates a brush.
	**/
	public function new(){
		brushMode = new BrushMode();
	}

	/**
		Tells if the brush can be used (all set, or `Delete` mode).
	**/
	public function isValid() : Bool {
		return ( brushMode.mode == Delete || (bitmap != null && tex != null && name != null && step > 0.0 && texPath != null) );
	}

	/**
		Scales the bitmap to the brush size for a texture of a tile.
	**/
	public function scaleForTex( tileSize : h2d.col.Point, texResolution : h2d.col.IPoint ) {
		if( tex != null ) {
			bitmap.scaleX = size / ((tileSize.x / texResolution.x) * tex.width);
			bitmap.scaleY = size / ((tileSize.y / texResolution.y) * tex.height);
		}
	}

	/**
		Stamps the brush on a tile texture at a position (from 0 to 1 on the tile).
	**/
	public function drawTo( target : h3d.mat.Texture, pos : h3d.col.Point, tileSize : h2d.col.Point, ?offset = 0 ) {
		var texSize = new h2d.col.IPoint(target.width + offset, target.height + offset);
		scaleForTex(tileSize, texSize);
		bitmap.setPosition(
						(pos.x * texSize.x - ( size / (tileSize.x / texSize.x) * 0.5 )),
						(pos.y * texSize.y - ( size / (tileSize.y / texSize.y) * 0.5 )));
		bitmap.drawTo(target);
	}
}

/**
	The action of a terrain brush.
**/
enum Mode {
	/**
		Raises the terrain (lowers it with shift).
	**/
	AddSub;
	/**
		Sets the terrain height to the strength (with shift, to the height under the first click).
	**/
	Set;
	/**
		Smooths the terrain.
	**/
	Smooth;
	/**
		Paints a surface (erases it with shift).
	**/
	Paint;
	/**
		Deletes the tiles.
	**/
	Delete;
	/**
		No action.
	**/
	NoMode;
}

/**
	The axis the stroke is locked to.
**/
enum LockAxe {
	/**
		Locked to the X axis.
	**/
	LockX;
	/**
		Locked to the Y axis.
	**/
	LockY;
	/**
		Not locked.
	**/
	NoLock;
}

/**
	The mode and modifiers of a terrain brush.
**/
class BrushMode {
	/**
		The stamps of a stroke add up instead of taking the maximum.
	**/
	public var accumulate = false;
	/**
		The opposite action (shift held).
	**/
	public var subAction = false;
	/**
		Locks the stroke to the main axis of its start (alt held).
	**/
	public var lockDir = false;
	/**
		Snaps the brush to the vertices (ctrl held).
	**/
	public var snapToGrid = false;
	/**
		The brush action.
	**/
	public var mode = NoMode;
	/**
		The axis the stroke is locked to.
	**/
	public var lockAxe = NoLock;
	/**
		The target height of the `Set` mode.
	**/
	public var setHeightValue = 0.0;
	/**
		Creates the default mode.
	**/
	public function new(){}
}

/**
	Multiplies the alpha by `amount`.
**/
class AlphaMult extends hxsl.Shader {
	static var SRC = {
		@param var amount : Float;
		var pixelColor : Vec4;
		function fragment() {
			pixelColor.a *= amount;
		}
	}
}

/**
	Shows the brush on the terrain as a decal.
**/
class BrushPreview extends h3d.scene.Mesh {

	var terrain : hrt.prefab.terrain.TerrainMesh;
	var decalShader : h3d.shader.pbr.VolumeDecal.DecalOverlay;
	/**
		The opacity of the preview.
	**/
	public var opacity : Float = 1.0;

	/**
		Creates the preview of a terrain.
	**/
	public function new( terrain : hrt.prefab.terrain.TerrainMesh ) {
		this.terrain = terrain;
		var material = h3d.mat.MaterialSetup.current.createMaterial();
		material.props = material.getDefaultProps();
		material.mainPass.removeShader(material.mainPass.getShader(h3d.shader.pbr.PropsValues));
		material.mainPass.setPassName("afterTonemappingDecal");
		material.mainPass.depthWrite = false;
		material.mainPass.depthTest = GreaterEqual;
		material.mainPass.culling = Front;
		material.mainPass.setBlendMode(Alpha);
		material.shadows = false;
		super(h3d.prim.Cube.defaultUnitCube(), material, terrain.getScene());
		decalShader = new h3d.shader.pbr.VolumeDecal.DecalOverlay();
		decalShader.fadeStart = 1;
		decalShader.fadeEnd = 0;
		decalShader.fadePower = 1;
		decalShader.emissive = 0;
		decalShader.CENTERED = true;
		decalShader.GAMMA_CORRECT = false;
		material.mainPass.addShader(decalShader);
		var colorSet = new FixedColor();
		colorSet.color.set(1,1,1,1);
		colorSet.USE_ALPHA = false;
		material.mainPass.addShader(colorSet);
		var am = new AlphaMult();
		am.setPriority(-1);
		am.amount = opacity;
		material.mainPass.addShader(am);

		// Only draw the preview on terrain
		material.mainPass.stencil = new h3d.mat.Stencil();
		material.mainPass.stencil.setFunc(Equal, 0x01, 0x01, 0x01);
		material.mainPass.stencil.setOp(Keep, Keep, Keep);
	}

	/**
		Shows a brush at a position.
	**/
	public function previewAt( brush : Brush, pos : h3d.col.Point ) {
		setPosition(pos.x, pos.y, pos.z);
		setScale(brush.size);
		scaleZ = 1000;
		decalShader.colorTexture = brush.tex;
		material.mainPass.getShader(AlphaMult).amount = opacity;
		visible = true;
	}

	/**
		Hides the preview.
	**/
	public function reset() {
		setPosition(0,0,0);
		visible = false;
		decalShader.colorTexture = null;
	}
}
