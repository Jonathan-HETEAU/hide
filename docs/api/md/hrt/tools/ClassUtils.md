# hrt.tools.ClassUtils

**class** · package [`hrt.tools`](README.md) · source [`hrt/tools/ClassUtils.hx`](../../../../../hrt/tools/ClassUtils.hx)

Class hierarchy helpers.

## Static methods

### getInheritance

```haxe
static function getInheritance(startClass:Class<getInheritance.T>, baseClass:Class<getInheritance.T>):Array<Class<getInheritance.T>>
```

Returns the classes from `baseClass` to `startClass`.

### getCommonClassInstance

```haxe
static function getCommonClassInstance(instances:Array<getCommonClassInstance.T>, baseClass:Class<getCommonClassInstance.T>):Class<getCommonClassInstance.T>
```

Returns the first common root for all classes instances in their class inheritance tree. See getCommonClass for more info

### getCommonClass

```haxe
static function getCommonClass(classes:Array<Class<getCommonClass.T>>, baseClass:Class<getCommonClass.T>):Class<getCommonClass.T>
```

Return the first common root for all classes in their inheritance tree (which should start at baseClass).
For example if B extends A and C extends A, `getCommonClass([B,C], A)` returns A
If D extends B, `getCommonClass([B,D], A)` returns B, and `getCommonClass([C,D], A)` returns A
