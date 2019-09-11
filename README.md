# Godot - Spook Demo 2D

This demonstration combines the following interesting aspects:
- Full 2D Tilemap with map collision
- 2D movement with WASD and the arrow keys
- A depressing atmosphere and field of view built around a Light2D and Light Occluders
- Deadly enemies with pathfinding
- Sprinting using the SHIFT key including exhaustion and a stamina bar

To run the demo you can either download this repository or clone it. You will then need to import the folder into the latest Godot 3.1 or scan for it. That's basically all you need to do. Then just go ahead and press "Launch" or F5 in the editor.

A simple live demo is available here: https://phoenix1747.github.io/Godot-SpookDemo2D/

### Directory structure

`maps` - the map scene

`scenes` - other scenes to be integrated into the scene tree easily

`src` - game scripts for all nodes

`textures` - textures for all nodes

### Controls

| KEY | FUNCTION |
| --- | --- |
| ESCAPE | Quit |
| R | Reset game |
| N | Toggle debugging mode |
| WASD & arrow keys | Move |
| SHIFT | Sprint |
| mouse wheel up/down | Camera zoom |

### Debugging Mode

Pressing `N` allows you to toggle the debugging mode which removes all lighting and shows the enemy pathfinding paths.
