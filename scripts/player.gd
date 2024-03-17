extends Area2D



func _ready() -> void:
	pass
	
func _process(delta) -> void:
	var velocity = Vector2.ZERO
	var border_size: float = Globals.LINE_WIDTH/2
	
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
	
	position += velocity * delta * Globals.PLAYER_SPEED
	
	position = position.clamp(
		Vector2(Globals.GAME_AREA_X+border_size, Globals.GAME_AREA_X+border_size), 
		Vector2(Globals.GAME_AREA_Y-border_size, Globals.GAME_AREA_Y-border_size)
	)

