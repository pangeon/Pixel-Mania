extends Game

class_name Level8

@onready var chests: Array[Node] = get_tree().get_nodes_in_group("chests")
@onready var laser_beams: Array[Node] = get_tree().get_nodes_in_group("laser_beams")

var laser_beam_5_on: bool = false

func _init() -> void:
	var component_manager: Component = Component.new()
	
	var components: Array[Node] = [
		component_manager.get_ui(8),
		component_manager.get_sfx("res://assets/music/background_music_4.mp3"),
		component_manager.get_background(),
		component_manager.get_player()
		]
		
	for component in components:
		$".".add_child(component)

func _process(_delta) -> void:
	chests[1].on_gravity()
	if laser_beam_5_on == false:
		laser_beams[4].off()
	else:
		laser_beams[4].on()


func _on_activation_plate_chest_touch():
	laser_beams[2].off()

func _on_activation_plate_chest_outside():
	laser_beams[2].on()

func _on_activation_plate_2_chest_touch():
	laser_beams[0].off()
	laser_beams[1].off()
	laser_beams[3].off()

func _on_activation_plate_2_chest_outside():
	laser_beams[0].on()
	laser_beams[1].on()
	laser_beams[3].on()

func _on_activation_plate_3_chest_touch():
	laser_beam_5_on = true

func _on_activation_plate_3_chest_outside():
	laser_beam_5_on = false
	
