# Create new level guide

## New empty level map

1) Run **Godot Engine**
2) Select -> Scene and choose scene **Node2D** change node name to *Level(numer)*
3) Click right mouse button and add childs nodes type **Node2D**
4) Change nodes names as *Objects* and *Map*
5) Select node *Map*, right mouse click and choose option **Instatiate Child Scene**
6) Add to three sub-nodes from readymade scenes files:
    - empty_tile_map.tscn
    - game_borders.tscn
    - exit_area.tscn
7) On top-level scene *Level(numer)* attach script:

```
extends Game

class_name Level<number>

@onready var chests: Array[Node] = get_tree().get_nodes_in_group("chests")
@onready var laser_beams: Array[Node] = get_tree().get_nodes_in_group("laser_beams")

func _init() -> void:
	var component_manager: Component = Component.new()
	
	var components: Array[Node] = [
		component_manager.get_ui(<numer>),
	component_manager.get_sfx("res://assets/music/background_music.mp3"),
		component_manager.get_background(),
		component_manager.get_player()
		]
		
	for component in components:
		$".".add_child(component)

func _process(_delta) -> void:
	pass
```

8) Set *exit area* place on board.

## Build level

1) You have possibility use readymade components e.g: 
    - **wall**: 
    - **chests**: chest, ice chest, gravity chests 
    - **laser beam** 
    - **activation plates**: activation plate, gravity switcher
2) Each level has other combination **lasers**, **chests** and **activation plates** so you must use script and add additional actions. Check level scripts -> [CLICK](/scripts/) 
