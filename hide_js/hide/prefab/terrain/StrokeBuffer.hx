package hide.prefab.terrain;

/**
	A render target accumulating a brush stroke on one terrain tile.
**/
class StrokeBuffer {
	/**
		The stroke texture.
	**/
	public var tex : h3d.mat.Texture;
	/**
		The X index of the tile.
	**/
	public var x : Int;
	/**
		The Y index of the tile.
	**/
	public var y : Int;
	/**
		True when the buffer is used by the current stroke.
	**/
	public var used : Bool;
	/**
		The height map of the tile before the stroke.
	**/
	public var prevTex : h3d.mat.Texture;
	/**
		A temporary texture.
	**/
	public var tempTex : h3d.mat.Texture;
	/**
		The texture format.
	**/
	public var format : hxd.PixelFormat;

	/**
		Creates the buffer of a tile.
	**/
	public function new(size : h2d.col.IPoint, x, y, format){
		this.format = format;
		tex = new h3d.mat.Texture(size.x, size.y, [Target], format);
		tempTex = new h3d.mat.Texture(size.x, size.y, [Target], format);
		tex.filter = Linear;
		tempTex.filter = Linear;
		this.x = x;
		this.y = y;
		used = false;
	}

	/**
		Disposes the textures.
	**/
	public function dispose(){
		if(tex != null) tex.dispose();
		if(tempTex != null) tempTex.dispose();
	}

	/**
		Recreates the textures with a new size.
	**/
	public function refresh(size: h2d.col.IPoint){
		if(tex != null) tex.dispose();
		if(tempTex != null) tempTex.dispose();
		tex = new h3d.mat.Texture(size.x, size.y, [Target], format);
		tempTex = new h3d.mat.Texture(size.x, size.y, [Target], format);
		tex.filter = Linear;
		tempTex.filter = Linear;
		tex.preventAutoDispose();
		tempTex.preventAutoDispose();
	}

	/**
		Clears the stroke and marks the buffer as unused.
	**/
	public function reset(){
		used = false;
		switch tex.format {
			case RGB16F, RGB32F:
				if(tex != null) tex.clearF(0);
				if(tempTex != null) tempTex.clearF(0);
			default:
				if(tex != null) tex.clear(0);
				if(tempTex != null) tempTex.clear(0);
		}
	}
}

/**
	The stroke buffers of the tiles touched by a stroke.
**/
class StrokeBufferArray{

	/**
		The buffers.
	**/
	public var strokeBuffers(default, null) : Array<StrokeBuffer> = [];
	var texSize = new h2d.col.IPoint(0,0);
	var format : hxd.PixelFormat;

	/**
		Creates an empty array of buffers of a format and size.
	**/
	public function new(format, texSize : h2d.col.IPoint ) {
		this.format = format;
		this.texSize = texSize;
	}

	/**
		Disposes the buffers.
	**/
	public function dispose(){
		for(strokebuffer in strokeBuffers) strokebuffer.dispose();
	}

	/**
		Returns the buffer of a tile, reusing an unused one or creating it.
	**/
	public function getStrokeBuffer(x, y){
		for(strokebuffer in strokeBuffers)
			if((strokebuffer.x == x && strokebuffer.y == y) || strokebuffer.used == false){
				strokebuffer.x = x;
				strokebuffer.y = y;
				return strokebuffer;
			}
		var strokeBuffer = new StrokeBuffer(texSize, x, y, format);
		strokeBuffers.push(strokeBuffer);
		return strokeBuffer;
	}

	/**
		Resizes the buffers.
	**/
	public function refresh( size : h2d.col.IPoint ){
		if(texSize == size) return;
		texSize = size;
		for(strokeBuffer in strokeBuffers)
			strokeBuffer.refresh(size);
	}

	/**
		Clears all the buffers.
	**/
	public function reset(){
		for(strokeBuffer in strokeBuffers){
			strokeBuffer.reset();
		}
	}
}
