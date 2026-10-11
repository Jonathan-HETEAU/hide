# hide.tools.ManagerToGenCommand

**enum abstract** · package [`hide.tools`](README.md) · module `hide.tools.FileManager` · source [`hide_js/hide/tools/FileManager.hx`](../../../../../hide_js/hide/tools/FileManager.hx) · available on editor (js)

A message from the file manager to the thumbnail generator.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `queue` | `"queue"` | Renders the thumbnail of a file. |
| `prio` | `"prio"` | Changes the priority of a queued file. |
| `clear` | `"clear"` | Clears the render queue. |
