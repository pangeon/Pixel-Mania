extends Node2D

class_name Component

static func get_sound_loader(sound_path: String, sound_player_name: String) -> AudioStreamPlayer2D:
	var sound: AudioStreamPlayer2D = AudioStreamPlayer2D.new()
	sound.name = sound_player_name
	sound.set_stream(load(sound_path))
	
	return sound

func get_component(scene_path: String, scene_name: String, order: int) -> Node2D:
	var scene_instance: Node2D = load(scene_path).instantiate()
	scene_instance.name = scene_name
	scene_instance.z_index = order
	return scene_instance

func get_background(scene_name: String = "Background", order: int = -1) -> Background:
	var scene_instance: Background = preload("res://scenes/components/background.tscn").instantiate()
	scene_instance.name = scene_name
	scene_instance.z_index = order
	return scene_instance

func get_player(scene_name: String = "Player", order: int = 1) -> Player:
	var scene_instance: Player = preload("res://scenes/components/player.tscn").instantiate()
	scene_instance.name = scene_name
	scene_instance.z_index = order
	return scene_instance

func get_sfx(stream_path: String, scene_name: String = "SFX", order: int = 0) -> AudioStreamPlayer2D:
	var scene_instance: AudioStreamPlayer2D = preload("res://scenes/components/game_music_background.tscn").instantiate()
	scene_instance.set_stream(load(stream_path))
	
	var container: Node2D = Node2D.new()
	container.name = scene_name
	container.z_index = order
	container.add_child(scene_instance)
	return container
	
func get_ui(level: int, scene_name: String = "UI") -> CanvasLayer:
	var scene_instance: CanvasLayer = preload("res://scenes/components/ui.tscn").instantiate()
	scene_instance.level = level
	scene_instance.name = scene_name
	return scene_instance
