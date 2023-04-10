# Boolean

A library of functions for working with booleans that can help other add-on creators to save some work.

**Included functions:**

* **Boolean.toBoolean**: converts a value to a boolean.

## Usage

### Embedding

#### Introduction

With this approach, the library is included as part of the add-on. A benefit to the add-on user is, that only
the add-on appears in the add-on list. So it can be easier to enable or disable an add-on and its library dependencies
compared to an approach where the libraries are included as add-ons (in this case each library shows as an add-on in the add-ons list and the user potentially is required to tick multiple checkboxes to enable or disable an add-on and its library dependencies).

#### How to do it

This library registers itself via the library "[Library](https://github.com/SanjoSolutions/LuaLibrary)". With this approach it is avoided to create another global (with its theoretical potential that other add-ons already use the same global). And "Library" also handles when multiple add-ons load the same library, potentially different versions of it.
To embed it, also include "[Library](https://github.com/SanjoSolutions/LuaLibrary)" as a dependency to your add-on.

In our example, we have installed both "Library" and "Boolean" inside the "libs" folder inside the add-on folder.

In your add-ons TOC file add (to load "Library" and "Boolean"):

```
libs/Library/Library.xml
libs/Boolean/Boolean.xml
```

It's recommended to load the library files first, so that the libraries are available in the other Lua files.

In your Lua file(s), you can access the library via:

```lua
local Boolean = Library.retrieve('Boolean', '^1.0.0')
```

### As add-on

This library can also just be put directly in the AddOns folder. In this case the library is available via the global `Boolean`.

If you develop an add-on and do this approach, you can just include this library in your release as a folder next to your add-ons folder.

## Support

You can support me on [Patreon](https://www.patreon.com/addons_by_sanjo).
