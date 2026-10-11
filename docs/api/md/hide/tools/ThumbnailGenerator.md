# hide.tools.ThumbnailGenerator

**class** · package [`hide.tools`](README.md) · source [`hide_js/hide/tools/ThumbnailGenerator.hx`](../../../../../hide_js/hide/tools/ThumbnailGenerator.hx) · available on editor (js)

Renders the file thumbnails in a hidden window, on requests from the `FileManager` through a socket.

## Static variables

### thumbRoot

```haxe
static final thumbRoot:String
```

The directory of the thumbnails, in the resources.

### thumbExt

```haxe
static final thumbExt:String
```

The image format of the thumbnails.

## Methods

### renderMiniature

```haxe
function renderMiniature(path:String, onReady:MiniatureReadyCallback):Void
```

Asynchronously generates a miniature.
onReady is called back with the path of the loaded miniature, or null if the miniature couldn't be loaded
