# defold-resize
A small library to switch between resolutions. It adds a menu in the bottom right that you can use to switch.

You can easily add new ones to the menu, or remove the standard ones you don't want.

```lua
local resize = require("resize.resize")

-- Add a new one
resize.add("SXGA(5:4)", vmath.vector3(1280, 2024, 1))

-- Remove an already added.
resize.remove("16:9")

```

<p align="center">
  <img src="/.github/resize2.png" style="width: 50%; height: auto;">
  <img src="/.github/resize.png" style="width: 50%; height: auto;">
</p>

## Installation
To use the library in a Defold project this project has to be added as a Defold library dependency. Open the game.project file and in the Dependencies field in the Project section add:

https://github.com/Jerakin/defold-resize/archive/main.zip

Or point to the ZIP file of a specific release.