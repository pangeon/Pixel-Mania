extends Game

class_name Level4

@onready var laser_beams: Array[Node] = get_tree().get_nodes_in_group("laser_beams")

func _init() -> void:
	add_ui_component(4)
	add_sfx_component("res://assets/music/background_music_4.mp3")
	add_background_component()
	add_player_component()

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

func add_background_component(scene_name: String = "Background", order: int = -1) -> void:
	var scene_instance: Background = preload("res://scenes/components/background.tscn").instantiate()
	scene_instance.name = scene_name
	scene_instance.z_index = order
	$".".add_child(scene_instance)

func add_player_component(scene_name: String = "Player", order: int = 1) -> void:
	var scene_instance: Player = preload("res://scenes/components/player.tscn").instantiate()
	scene_instance.name = scene_name
	scene_instance.z_index = order
	$".".add_child(scene_instance)

func add_sfx_component(stream_path: String, scene_name: String = "SFX", order: int = 0) -> void:
	var scene_instance: AudioStreamPlayer2D = preload("res://scenes/components/game_music_background.tscn").instantiate()
	scene_instance.set_stream(load(stream_path))
	var container: Node2D = Node2D.new()
	container.name = scene_name
	container.z_index = order
	container.add_child(scene_instance)
	$".".add_child(container)
	
func add_ui_component(level: int, scene_name: String = "UI") -> void:
	var scene_instance: CanvasLayer = preload("res://scenes/components/ui.tscn").instantiate()
	scene_instance.level = level
	scene_instance.name = scene_name
	$".".add_child(scene_instance)
