extends Node2D

class_name StartScreen

func _ready():
	$".".add_child(
		Component.get_sound_loader("res://assets/music/start_music.mp3", "StartMusic")
	)
	_play_music()
	
	var access_level_buttons: Array[Node] = get_tree().get_nodes_in_group("access_level_buttons")
	
	for i in access_level_buttons.size():
		if i == 0:
			access_level_buttons[i].pressed.connect(_start_level)
		elif i == 1:
			access_level_buttons[i].pressed.connect(_level_2)
		elif i == 2:
			access_level_buttons[i].pressed.connect(_level_3)
		elif i == 3:
			access_level_buttons[i].pressed.connect(_level_4)
		else:
			pass
		
func _start_level() -> void:
	get_tree().change_scene_to_file(Globals.LEVEL_1)

func _level_2() -> void:
	get_tree().change_scene_to_file(Globals.LEVEL_2)

func _level_3() -> void:
	get_tree().change_scene_to_file(Globals.LEVEL_3)

func _level_4() -> void:
	get_tree().change_scene_to_file(Globals.LEVEL_4)

func _play_music() -> void:
	var start_music_player: AudioStreamPlayer2D = $".".get_node("StartMusic")
	start_music_player.play()
	

