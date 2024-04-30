extends Game

class_name StartLevel

@onready var laser_beam: LaserBeam = $Objects/LaserBeam

func _init() -> void:
	var component_manager: Component = Component.new()
	
	var components: Array[Node] = [
		component_manager.get_ui(1),
		component_manager.get_sfx("res://assets/music/background_music.mp3"),
		component_manager.get_background(),
		component_manager.get_player()
		]
		
	for component in components:
		$".".add_child(component)
		
func _on_activation_plate_chest_touch() -> void:
	laser_beam.off()

func _on_activation_plate_chest_outside() -> void:
	laser_beam.on()

