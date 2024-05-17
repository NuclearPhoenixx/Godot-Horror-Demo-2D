# Godot - 2D Horror Demo

This demo for Godot 3.x combines the following interesting aspects:
- Full 2D Tilemap with map collision
- 2D movement with WASD and the arrow keys
- A _depressing_ (lol) atmosphere and field of view built around a Light2D and Light Occluders
- Deadly enemie(s) with pathfinding
- Sprinting using the SHIFT key including exhaustion and a stamina bar

To run the demo you can either download this repository or clone it. You will then need to import the folder into the latest Godot (>=3.3.3) or scan for it. That's basically all you need to do. Then just go ahead and press "Launch" or F5 in the editor.

**A simple live demo is available here: https://NuclearPhoenixx.github.io/Godot-Horror-Demo-2D/**

This was basically the basis for my unfinished, crappy "game" [SCP - Perception](https://github.com/NuclearPhoenixx/SCP-Perception).

---

### Directory structure

`maps` - the map scene

`scenes` - other scenes to be integrated into the scene tree easily

`src` - game scripts for all nodes

`textures` - textures for all nodes

---

### Controls

| KEY | FUNCTION |
| --- | --- |
| ESCAPE | Quit |
| R | Reset game |
| N | Toggle debugging mode |
| WASD & arrow keys | Move |
| SHIFT | Sprint |
| mouse wheel up/down | Camera zoom |

---

### Debugging Mode

Pressing `N` allows you to toggle the debugging mode which removes all lighting and shows the enemy pathfinding paths.
