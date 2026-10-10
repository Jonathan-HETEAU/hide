package hrt.prefab.pbr;

import hrt.shader.SpecularColor;
import hrt.shader.SpecularColor.SpecularColorAlbedo;
import hrt.shader.SpecularColor.SpecularColorFlat;
import hrt.shader.SpecularColor.SpecularColorTexture;

/**
	Where the specular color of a `SpecularColor` comes from.
**/
enum abstract SpecularColorMode(String) {
	/**
		The albedo, tinted by `specularTint`.
	**/
	var Albedo;
	/**
		A constant color.
	**/
	var Flat;
	/**
		A texture.
	**/
	var Texture;
}

/**
	Sets the specular color of the materials of its parent `Material`.
**/
@:prefabIcon(HuiRes.ui.icons.prefab.specular_color)
@:prefabName("Specular Color")
@:prefabCategory("Shader")
class SpecularColor extends Prefab {

	// Amount of dielectric specular reflection. Specifies facing (along normal) reflectivity in the most common 0 - 8% range.
	/**
		The amount of dielectric specular reflection: the facing reflectivity, in the common 0 to 8% range.
	**/
	@:s public var specular : Float = 0.5;

	// Tints the facing specular reflection using the base color, while glancing reflection remains white.
	// Normal dielectrics have colorless reflection, so this parameter is not technically physically correct
	// and is provided for faking the appearance of materials with complex surface structure.
	/**
		Tints the facing specular reflection with the base color, while the glancing reflection stays white. Not physically correct: fakes materials with a complex surface structure.
	**/
	@:s public var specularTint : Float = 0.0;

	/**
		The path of the specular color texture (`Texture` mode).
	**/
	@:s public var specularColorPath : String;
	/**
		The specular color, as RGB (`Flat` mode).
	**/
	@:s public var specularColorCustomValue : Int;
	/**
		Where the specular color comes from.
	**/
	@:s public var mode : SpecularColorMode = Albedo;

	function getMaterials() {
		if( Std.isOfType(parent, Material) ) {
			var material : Material = cast parent;
			return material.getMaterials();
		}
		else {
			return findFirstLocal3d().getMaterials();
		}
	}

	override function makeInstance() : Void {
		refreshShaders();
		updateInstance();
	}

	override function updateInstance(?propName : String ) {
		for( m in getMaterials() ) {
			var sca = m.mainPass.getShader(SpecularColorAlbedo);
			if( sca != null ) {
				// No params
			}
			var scf = m.mainPass.getShader(SpecularColorFlat);
			if( scf != null ) {
				scf.specularColorValue = h3d.Vector.fromColor(specularColorCustomValue);
			}
			var sct = m.mainPass.getShader(SpecularColorTexture);
			if( sct != null ) {
				sct.specularColorTexture = shared.loadTexture(specularColorPath);
			}
			var sc = m.mainPass.getShader(hrt.shader.SpecularColor);
			if( sc != null ) {
				sc.specular = specular;
				sc.specularTint = specularTint;
			}
		}
	}

	function refreshShaders() {

		var sca = new SpecularColorAlbedo();
		var scf = new SpecularColorFlat();
		var sct = new SpecularColorTexture();
		var sc = new hrt.shader.SpecularColor();

		var specularColorTexture = specularColorPath != null ? shared.loadTexture(specularColorPath) : null;

		var mat = getMaterials();
		for( m in mat ) {
			m.mainPass.removeShader(m.mainPass.getShader(SpecularColorAlbedo));
			m.mainPass.removeShader(m.mainPass.getShader(SpecularColorFlat));
			m.mainPass.removeShader(m.mainPass.getShader(SpecularColorTexture));
			m.mainPass.removeShader(m.mainPass.getShader(hrt.shader.SpecularColor));
		}
		for( m in mat ) {

			if( m.mainPass.name != "forward" )
				continue;

			switch mode {
				case Albedo: m.mainPass.addShader(sca);
				case Flat: m.mainPass.addShader(scf);
				case Texture: specularColorTexture == null ? m.mainPass.addShader(scf) : m.mainPass.addShader(sct);
			}

			m.mainPass.addShader(sc);
		}
	}

	#if editor
	override function getHideProps() : hide.prefab.HideProps {
		return { 	icon : "cube",
					name : "SpecularColor",
					allowParent : function(p) return p.to(Material) != null };
	}

	override function edit( ctx : hide.prefab.EditContext ) {
		super.edit(ctx);

		var flatParams = 	'<dt>Color</dt><dd><input type="color" field="specularColorCustomValue"/></dd>';

		var textureParams = '<dt>Color</dt><dd><input type="texturepath" field="specularColorPath"/>';

		var albedoParams =	'';

		var params = switch mode {
			case Albedo: albedoParams;
			case Texture: textureParams;
			case Flat: flatParams;
		};

		var props = new hide.Element('
			<div class="group" name="Specular Color">
				<dl>
					<dt>Reflection Amount</dt><dd><input type="range" min="0" max="1" field="specular"/>
					<dt>Tint Amount</dt><dd><input type="range" min="0" max="1" field="specularTint"/></dd>
					<dt>Color Mode</dt>
						<dd>
							<select field="mode">
								<option value="Albedo">Albedo</option>
								<option value="Flat">Flat</option>
								<option value="Texture">Texture</option>
							</select>
						</dd>
					' + params + '
				</dl>
			</div>
		');

		ctx.properties.add(props, this, function(pname) {
			if( pname == "mode" || pname == "specularColorPath" ) {
				ctx.rebuildProperties();
				refreshShaders();
			}
			ctx.onChange(this, pname);
		});
	}
	#end

	override function edit2( ctx : hrt.prefab.EditContext2 ) {
		super.edit2(ctx);

		function rebuild( isTemp : Bool){
			ctx.rebuildInspector();
			refreshShaders();
		}

		ctx.build(
			<root>
				<category("Specular Color")>
					<range(0,1) label="Reflection Amount" field={specular} />
					<range(0,1) label="Tint Amount" field={specularTint} />
					<select(["Albedo","Flat","Texture"]) field={mode} onValueChange={rebuild}/>
					<color label="Color" field={specularColorCustomValue} if(mode == SpecularColorMode.Flat)/>
					<file label="Color" field={specularColorPath} type="texture" onValueChange={rebuild} if(mode == SpecularColorMode.Texture)/>
				</category>
			</root>
		);
	}

	static var _ = Prefab.register("specularColor", SpecularColor);
}
