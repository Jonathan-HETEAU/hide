package hrt.tools;

/**
	The element of the one side of a `OneToMany`.
**/
typedef Left = Int;
/**
	The element of the many side of a `OneToMany`.
**/
typedef Right = Int;

/**
    Represent a collection of One -> Many relationship, i.e Multiple `Right` elements can point to an unique `Left` element.
    For example, a Parent -> Children relationship can be modeled with this, or a Output -> Input in a shadergraph.
**/
class OneToMany {
    var left : Map<Left, Map<Right, Bool>>;
    var right : Map<Right, Left>;

    /**
    	Creates an empty collection.
    **/
    public function new() {
        left = new Map<Left, Map<Right, Bool>>();
        right = new Map<Right, Left>();
    }

    /**
        Add a relation in the collection.
        If the right element already has a relation, it will be removed and replaced by this one.
    **/
    public function insert(l: Left, r: Right) {
        removeRight(r);
        var rights : Map<Right, Bool> = left.get(l);
        if (rights == null) {
            rights = [];
            left.set(l, rights);
        }
        rights.set(r, true);
        right.set(r, l);
    }

    /**
    	Removes the relation of a right element. Returns its left element, or `null`.
    **/
    public function removeRight(r: Right) : Null<Left> {
        var prevL = right.get(r);
        right.remove(r);
        if (prevL != null) {
            left.get(prevL).remove(r);
        }
        return prevL;
    }

    /**
    	Removes the relations of a left element.
    **/
    public function removeLeft(l: Left) {
        var prevRs = left.get(l);
        left.remove(l);
        if (prevRs != null) {
            for(r => _ in prevRs) {
                right.remove(r);
            }
        }
    }

    /**
    	Iterates on the left elements and their right elements.
    **/
    public function iterAll() : KeyValueIterator<Int, Iterator<Right>> {
        var iter = left.keyValueIterator();
        return {
            next: () -> {
                var n = iter.next();
                return {key: n.key, value: n.value.keys()};
            },
            hasNext: () -> {
                return iter.hasNext();
            }
        };
    }

    /**
    	Iterates on the right elements of a left element.
    **/
    public function iterRights(l: Left) : Iterator<Right> {
        var rights = left.get(l);
        if (rights != null) {
            return rights.keys();
        }
        return {
            next: () -> {
                return -1;
            },
            hasNext: () -> {
                return false;
            }
        };
    }

    /**
    	Returns the left element of a right element, or `null`.
    **/
    public function getLeft(r: Right) {
        return right.get(r);
    }

    /**
    	Removes all the relations.
    **/
    public function clear() {
        right.clear();
        left.clear();
    }
}