extends Node2D

class_name StartScreen

func _ready():
	var access_level_buttons: Array[Node] = get_tree().get_nodes_in_group("access_level_buttons")
	
	for i in access_level_buttons.size():
		if i == 0:
			access_level_buttons[i].pressed.connect(_start_level)
		elif i == 1:
			access_level_buttons[i].pressed.connect(level_2)
		elif i == 2:
			access_level_buttons[i].pressed.connect(level_3)
		elif i == 3:
			access_level_buttons[i].pressed.connect(level_4)
		else:
			pass
		
func _start_level() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/start_level.tscn")

func level_2() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level_2.tscn")

func level_3() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level_3.tscn")

func level_4() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level_4.tscn")

