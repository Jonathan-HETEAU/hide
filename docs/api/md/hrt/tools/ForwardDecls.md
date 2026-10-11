# hrt.tools.ForwardDecls

**interface** · package [`hrt.tools`](README.md) · module `hrt.tools.Macros` · source [`hrt/tools/Macros.hx`](../../../../../hrt/tools/Macros.hx)

Runs `Macros.forward` on implementing classes. Autobuild macros run before `@:build` ones, and interfaces
listed last run first : list it after other autobuilding interfaces (e.g. `h2d.domkit.Object`) so they see forwarded members.
