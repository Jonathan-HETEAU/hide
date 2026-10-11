# hrt.impl.RemotePrefabActionKind

**enum abstract** · package [`hrt.impl`](README.md) · module `hrt.impl.RemoteConsole` · source [`hrt/impl/RemoteConsole.hx`](../../../../../hrt/impl/RemoteConsole.hx)

The kind of a remote prefab message.

Underlying type: `String`

## Values

| Name | Value | Description |
|---|---|---|
| `Open` | `"Open"` | Game -> Hide: requests to open the prefab data contained in `data`. |
| `Update` | `"Update"` | Hide -> Game: updates the prefab opened in the game with the new `data`. |
