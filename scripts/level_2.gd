extends Game

class_name Level2

@onready var laser_beams: Array[Node] = get_tree().get_nodes_in_group("laser_beams")

func _init() -> void:
	var component_manager: Component = Component.new()
	
	var components: Array[Node] = [
		component_manager.get_ui(2),
		component_manager.get_sfx("res://assets/music/background_music_2.mp3"),
		component_manager.get_background(),
		component_manager.get_player()
		]
		
	for component in components:
		$".".add_child(component)

func _on_activation_plate_chest_touch() -> void:
	laser_beams[0].off()
	laser_beams[1].off()

func _on_activation_plate_2_chest_touch() -> void:
	laser_beams[2].off()
	
func _on_activation_plate_chest_outside() -> void:
	laser_beams[0].on()
	laser_beams[1].on()

func _on_activation_plate_2_chest_outside() -> void:
	laser_beams[2].on()

