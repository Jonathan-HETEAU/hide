package hrt.tools;

/**
	A part of the path to a CastleDB cell.
**/
enum PathPart {
	/**
		A line by its id, in the column `targetCol`.
	**/
	Id(idCol:String, name:String, ?targetCol: String);
	/**
		A property.
	**/
	Prop(name: String);
	/**
		A line by its index, in the column `targetCol`.
	**/
	Line(lineNo:Int, ?targetCol: String);
	/**
		A line of a script.
	**/
	Script(lineNo:Int);
}

/**
	The path to a CastleDB cell.
**/
typedef Path = Array<PathPart>;

/**
	CastleDB helpers.
**/
class CdbUtils {
	/**
		Returns the readable path (ids or columns with indexes) and the coordinates of a reference.
	**/
	public static function splitPath(rs: cdb.Sheet.Reference) {
		var path = [];
		var coords = [];
		for( i in 0...rs.s.length ) {
			var s = rs.s[i];
			var oid = Reflect.field(rs.o.path[i], s.id);
			var idx = rs.o.indexes[i];
			if( oid == null || oid == "" ) {
				var col = i > 0 ? rs.s[i - 1].c : s.c;
				path.push(col + (idx < 0 ? "" : "[" + idx +"]"));
			}
			else {
				path.push(oid);
			}
			if (i == rs.s.length - 1 && s.c != "" && s.c != null) {
				path.push(s.c);
			}
		}
		var coords = [];
		var curIdx = 0;
		while(curIdx < rs.o.indexes.length) {
			var sheet = rs.s[curIdx];
			var isSheet = !sheet.s.props.isProps;
			if (isSheet) {
				var oid = Reflect.field(rs.o.path[curIdx], sheet.id);
				var next = sheet.c;
				if (oid != null) {
					coords.push(Id(sheet.id, oid, next));
				}
				else {
					coords.push(Line(rs.o.indexes[curIdx], next));
				}
			}
			else {
				coords.push(Prop(rs.s[curIdx].c));
			}

			curIdx += 1;
		}

		return {pathNames: path, pathParts: coords};
	}
}