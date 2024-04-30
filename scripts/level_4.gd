extends Game

class_name Level4

@onready var laser_beams: Array[Node] = get_tree().get_nodes_in_group("laser_beams")

func _init() -> void:
	var component_manager: Component = Component.new()
	
	var components: Array[Node] = [
		component_manager.get_ui(4),
		component_manager.get_sfx("res://assets/music/background_music_4.mp3"),
		component_manager.get_background(),
		component_manager.get_player()
		]
		
	for component in components:
		$".".add_child(component)

func _on_activation_plate_chest_touch() -> void:
	laser_beams[2].off()

func _on_activation_plate_chest_outside() -> void:
	laser_beams[2].on()

func _on_activation_plate_2_chest_touch() -> void:
	laser_beams[0].off()

func _on_activation_plate_3_chest_touch() -> void:
	laser_beams[1].off()

func _on_activation_plate_4_chest_touch() -> void:
	laser_beams[3].off()
	
func _on_activation_plate_2_chest_outside() -> void:
	laser_beams[0].on()

func _on_activation_plate_3_chest_outside() -> void:
	laser_beams[1].on()

func _on_activation_plate_4_chest_outside() -> void:
	laser_beams[3].on()
