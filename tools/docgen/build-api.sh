#!/bin/sh
# Builds the Haxe XML API description (editor on js, runtime hrt on hl), the dox HTML site,
# the Markdown reference, docs/llms.txt and the file dependency map.
#   tools/docgen/build-api.sh
# Needs heaps, hxbit, domkit, castle, hscript, hx3compat, hxnodejs and hashlink as haxelib dev libraries, Haxe 4.3.7, Neko, HashLink and dox compiled for HashLink in /opt/haxesrc/dox:
# see tools/docgen/build-api.sh --install in the Heaps repository, which installs all of them.
set -e
ROOT=$(cd "$(dirname "$0")/../.." && pwd)
export PATH=/opt/haxe:/opt/neko:/opt/haxesrc/hashlink:$PATH HAXE_STD_PATH=/opt/haxe/std LD_LIBRARY_PATH=/opt/neko:/opt/haxesrc/hashlink NEKOPATH=/opt/neko

cd $ROOT
for t in js hrt; do haxe docs/api/xml-$t.hxml; done
# a doc comment must be the same on every platform, or dox fails (types) or lists it twice (fields)
CONFLICTS=$(python3 tools/docgen/doc-conflicts.py)
echo "$CONFLICTS" | grep -q '^0 conflicts$' || { echo "$CONFLICTS"; echo 'Make these doc comments identical on all platforms'; exit 1; }
# public API without documentation, as dox sees it (informative)
python3 tools/docgen/xml-undocumented.py | tail -1
IN=$(mktemp -d)
# dox cannot merge types whose definition differs between the editor and the runtime: keep the editor (js) one.
python3 tools/docgen/merge-fix.py docs/api $IN hrt.prefab.ContextShared hrt.prefab.ContextMake hxd.DisplayMode >/dev/null
rm -rf docs/api/html
# dox caches by XML hash inside its output dir: always start from an empty one.
(cd /opt/haxesrc/dox && hl run.hl -i $IN -o $ROOT/docs/api/html --title "Hide API" -in "^(hrt|hide)(\.|$)" \
	-D source-path https://github.com/HeapsIO/hide/blob/master/)
rm -rf $IN
rm -rf $ROOT/docs/api/html/hashes

# Markdown reference + llms.txt index, and the file dependency map
python3 tools/docgen/xml2md.py
python3 tools/docgen/deps.py
