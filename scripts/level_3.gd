extends Game

class_name Level3

@onready var laser_beam: LaserBeam = $Objects/LaserBeam

var lock_laser_beam: Array[bool] = [false, false, false, false]

func _init() -> void:
	add_ui_component(3)
	add_sfx_component("res://assets/music/background_music_3.mp3")
	add_background_component()
	add_player_component()

func _process(_delta) -> void:
	if lock_laser_beam == [true, true, true, true]:
		laser_beam.off()
	else:
		laser_beam.on()

func _on_activation_plate_chest_touch() -> void:
	lock_laser_beam[0] = true

func _on_activation_plate_2_chest_touch() -> void:
	lock_laser_beam[1] = true

func _on_activation_plate_3_chest_touch() -> void:
	lock_laser_beam[2] = true

func _on_activation_plate_4_chest_touch()  -> void:
	lock_laser_beam[3] = true

func _on_activation_plate_chest_outside() -> void:
	lock_laser_beam[0] = false

func _on_activation_plate_2_chest_outside() -> void:
	lock_laser_beam[1] = false

func _on_activation_plate_3_chest_outside() -> void:
	lock_laser_beam[2] = false

func _on_activation_plate_4_chest_outside() -> void:
	lock_laser_beam[3] = false

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
