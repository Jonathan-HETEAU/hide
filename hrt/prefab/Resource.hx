package hrt.prefab;

/**
	A prefab file resource (`.prefab`, `.fx`, `.l3d`...): `load()` returns its prefab, cached and reloaded when the file changes. Accessed with `hxd.Res` (`hxd.res.Prefab`).
**/
@:access(hrt.prefab.Prefab)
class Resource extends hxd.res.Resource {

	var prefab : Prefab;
	var cacheVersion : Int;

	/**Increase each time this resource get reloaded, can be used for cache invalidation**/
	public var reloadedVersion(default, null) : Int = 0;
	var isWatched : Bool;

	override function watch( onChanged: Null<Void -> Void> ) {
		if( entry == null )
			return;
		if( onChanged == null ) {
			super.watch(null);
			isWatched = false;
			return;
		}
		isWatched = true;
		super.watch(function() {
			if( prefab != null ) {
				var data = try loadData() catch( e : Dynamic ) return; // parsing error (conflict ?)
				prefab.reload(data);
				reloadedVersion ++;
				onPrefabLoaded(prefab);
			}
			onChanged();
		});
	}

	function loadData() {
		#if (editor || editor_hl)
		// Force loading the original prefab data from disc to avoid sync errors between
		// original data and bson
		var localEntry = Std.downcast(entry, hxd.fs.LocalFileSystem.LocalEntry);
		@:privateAccess var path = localEntry.originalFile ?? localEntry.file;
		return  haxe.Json.parse(sys.io.File.getContent(path));
		#else
		var isBSON = entry.fetchBytes(0,1).get(0) == 'H'.code;
		return isBSON ? new hxd.fmt.hbson.Reader(entry.getBytes(),false).read() : haxe.Json.parse(entry.getText());
		#end
	}

	/**
		Loads the prefab from the file, without using the cache.
	**/
	public function loadBypassCache() : Prefab {
		var data = loadData();
		var prefab = Prefab.createFromDynamic(data, new ContextShared(entry.path, false));
		return cast prefab;
	}

	/**
		Returns the prefab of the file (cached, see `CACHE_VERSION`). The file is watched: the prefab is reloaded when it changes.
	**/
	public function load() : Prefab {
		if(prefab != null && cacheVersion == CACHE_VERSION )
			return prefab;
		prefab = loadBypassCache();
		cacheVersion = CACHE_VERSION;
		onPrefabLoaded(prefab);
		if( !isWatched ) watch(function() {}); // auto lib reload
		return cast prefab;
	}

	/**
		Returns a resource for an existing prefab.
	**/
	public static function make( p : Object3D ) {
		if( p == null ) throw "assert";
		var r = new Resource(null);
		r.prefab = p;
		return r;
	}

	/**
		Increase it to invalidate the prefabs cached by `load`.
	**/
	public static var CACHE_VERSION = 0;
	/**
		Called when a prefab was loaded or reloaded.
	**/
	public static dynamic function onPrefabLoaded(p:Prefab) {
	}

}