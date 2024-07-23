extends Game

class_name Level7

@onready var gravity_chest: Chest = $Objects/Chest
var gravity_direction: int = 0

func _init() -> void:
	
	var component_manager: Component = Component.new()
	
	var components: Array[Node] = [
		component_manager.get_ui(7),
		component_manager.get_sfx("res://assets/music/background_music_3.mp3"),
		component_manager.get_background(),
		component_manager.get_player()
		]
		
	for component in components:
		$".".add_child(component)

func _process(_delta) -> void:
	gravity_chest.on_gravity(gravity_direction)


func _on_activation_plate_chest_touch():
	gravity_direction = 1

func _on_activation_plate_chest_outside():
	pass # Replace with function body.
