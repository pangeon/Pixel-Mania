extends Node

class_name Game

@export var next_level: PackedScene = null
@onready var exit_area: Area2D = $Map/ExitArea

func _ready() -> void:
	exit_area.body_entered.connect(_on_exit_area_body_entered)

func _on_exit_area_body_entered(body) -> void:
	if (body is Player) and (next_level != null):
		get_tree().change_scene_to_packed(next_level)
	else:
		get_tree().reload_current_scene()
