extends Game

class_name Level5

@onready var laser_beams: Array[Node] = get_tree().get_nodes_in_group("laser_beams")
var lock_laser_beam: Array[bool] = [false, false, false]

func _init() -> void:
	var component_manager: Component = Component.new()
	
	var components: Array[Node] = [
		component_manager.get_ui(5),
		component_manager.get_sfx("res://assets/music/background_music.mp3"),
		component_manager.get_background(),
		component_manager.get_player()
		]
		
	for component in components:
		$".".add_child(component)

func _process(_delta) -> void:
	if lock_laser_beam == [true, true, true]:
		laser_beams[0].off()
		laser_beams[1].off()
		laser_beams[2].off()
		laser_beams[3].off()
		laser_beams[4].off()
	else:
		laser_beams[0].on()
		laser_beams[1].on()
		laser_beams[2].on()
		laser_beams[3].on()
		laser_beams[4].on()

func _on_activation_plate_chest_touch() -> void:
	lock_laser_beam[0] = true

func _on_activation_plate_2_chest_touch() -> void:
	lock_laser_beam[1] = true

func _on_activation_plate_3_chest_touch() -> void:
	lock_laser_beam[2] = true

func _on_activation_plate_chest_outside() -> void:
	lock_laser_beam[0] = false

func _on_activation_plate_2_chest_outside() -> void:
	lock_laser_beam[1] = false

func _on_activation_plate_3_chest_outside() -> void:
	lock_laser_beam[2] = false

func _laser_beams_off() -> void:
	laser_beams[0].off()
	laser_beams[1].off()
	laser_beams[2].off()
	laser_beams[3].off()
	laser_beams[4].off()
