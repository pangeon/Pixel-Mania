extends Area2D

class_name Chest

signal push_by_player
signal exited_by_player

func _ready():
	pass

func _process(_delta):
	pass

func _on_area_entered(area: Area2D) -> void:
	if area is Player:
		push_by_player.emit()

func _on_area_exited(area):
	if area is Player:
		exited_by_player.emit()
