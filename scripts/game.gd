extends Node

class_name Game

@export var next_level: PackedScene = null
@onready var exit_area: Area2D = $Map/ExitArea

func _ready() -> void:
	$".".add_child(
		Component.get_sound_loader("res://assets/music/level_end_sound.mp3", "EndLevelSound")
	)
	
	exit_area.body_entered.connect(_on_exit_area_body_entered)

func _on_exit_area_body_entered(body) -> void:
	if (body is Player) and (next_level != null):
		_play_end_level_sound()
		await get_tree().create_timer(1.0).timeout
		get_tree().change_scene_to_packed(next_level)
	else:
		get_tree().reload_current_scene()

func _play_end_level_sound() -> void:
	var end_level_sound: AudioStreamPlayer2D = $".".get_node("EndLevelSound")
	end_level_sound.play()

