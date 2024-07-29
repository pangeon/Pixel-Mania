extends Game

class_name Level10

@onready var chests: Array[Node] = get_tree().get_nodes_in_group("chests")
@onready var laser_beams: Array[Node] = get_tree().get_nodes_in_group("laser_beams")

var lock_laser_beam_3: Array[bool] = [false, false]

func _init() -> void:
	var component_manager: Component = Component.new()
	
	var components: Array[Node] = [
		component_manager.get_ui(10),
		component_manager.get_sfx("res://assets/music/background_music_2.mp3"),
		component_manager.get_background(),
		component_manager.get_player()
		]
		
	for component in components:
		$".".add_child(component)

func _process(_delta) -> void:
	if lock_laser_beam_3 == [true, true]:
		laser_beams[2].off()

func _on_activation_plate_chest_touch():
	lock_laser_beam_3[0] = true

func _on_activation_plate_chest_outside():
	lock_laser_beam_3[0] = false

func _on_activation_plate_2_chest_touch():
	lock_laser_beam_3[0] = false
	lock_laser_beam_3[1] = false
	laser_beams[2].on()

func _on_activation_plate_2_chest_outside():
	lock_laser_beam_3[0] = false
	lock_laser_beam_3[1] = false

func _on_activation_plate_3_chest_touch():
	lock_laser_beam_3[1] = true

func _on_activation_plate_3_chest_outside():
	lock_laser_beam_3[0] = false

func _on_activation_plate_4_chest_touch():
	lock_laser_beam_3[0] = false
	lock_laser_beam_3[1] = false
	laser_beams[2].on()

func _on_activation_plate_4_chest_outside():
	lock_laser_beam_3[0] = false
	lock_laser_beam_3[1] = false
