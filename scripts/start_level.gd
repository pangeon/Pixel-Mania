extends Game

class_name StartLevel

@onready var laser_beam: LaserBeam = $Objects/LaserBeam

func _init() -> void:
	add_ui_component(1)
	add_sfx_component("res://assets/music/background_music.mp3")
	add_background_component()
	add_player_component()
 
func _on_activation_plate_chest_touch() -> void:
	laser_beam.off()

func _on_activation_plate_chest_outside() -> void:
	laser_beam.on()

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
