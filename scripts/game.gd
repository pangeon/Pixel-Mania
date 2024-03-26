extends Node

@onready var chest: Area2D = $Map/Chest
@onready var player: Area2D = $Background/Player
 
func _ready():
	pass
	
func _process(delta):
	chest.position = chest.position.clamp(
		Vector2(Globals.GAME_AREA_X+3, Globals.GAME_AREA_X+3),
		Vector2(Globals.GAME_AREA_Y-9, Globals.GAME_AREA_Y-3)
	)

func _on_chest_push_by_player() -> void:
	player.stop_player()	
	if Input.is_action_pressed("move_right"):
		chest.position.x += 4
	if Input.is_action_pressed("move_left"):
		chest.position.x -= 4
	if Input.is_action_pressed("move_down"):
		chest.position.y += 4
	if Input.is_action_pressed("move_up"):
		chest.position.y -= 4
		
func _on_chest_exited_by_player() -> void:
	player.start_player()
