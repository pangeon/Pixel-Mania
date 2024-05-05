extends Area2D

class_name ExitArea

signal player_end_level

func _on_body_entered(body) -> void:
	if body is Player:
		player_end_level.emit()
