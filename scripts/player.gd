extends Area2D

class_name Player

func _ready() -> void:
	position = Globals.PLAYER_START # (51, 303)

func _process(delta) -> void:
	var velocity = Vector2.ZERO
	const border_size: float = Globals.LINE_WIDTH/2 # 6/2 = 3
	
	if Input.is_action_pressed("move_right"):
#		print_player_position()
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
#		print_player_position()
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
#		print_player_position()
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		#print_player_position()
		velocity.y -= 1
	
	position += velocity * delta * Globals.PLAYER_SPEED
	
	# block player movement apart from board
	position = position.clamp(
		Vector2(Globals.GAME_AREA_X+border_size, Globals.GAME_AREA_X+border_size), # (51, 51)
		Vector2(Globals.GAME_AREA_Y-border_size, Globals.GAME_AREA_Y-border_size)  # (303, 303)
	)
	
func print_player_position() -> void:
	print("x=", int(position.x), " | y=", int(position.y))


func _on_chest_push_by_player() -> void:
	print("player touch chest")
	get_tree().quit()
