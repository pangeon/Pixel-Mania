extends CharacterBody2D

class_name Player

@export var speed: float = 2
@export var push_force: float = 15000

func _ready() -> void:
	position = Globals.PLAYER_START # (51, 303)

func _physics_process(_delta) -> void:
	velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.x += speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed
	if Input.is_action_pressed("move_down"):
		velocity.y += speed
	if Input.is_action_pressed("move_up"):
		velocity.y -= speed
	if Input.is_action_pressed("reset"):
		_reset()
		
	var collision: KinematicCollision2D = move_and_collide(velocity)
	
	if collision:
		var direction: Vector2 = collision.get_normal()
		var collider: Object = collision.get_collider()
		if collider is RigidBody2D:
			collider.apply_force(-direction * push_force)
	
func print_player_position() -> void:
	print("x=", int(position.x), " | y=", int(position.y))

func _on_laser_beam_player_touch():
	print("player touch laser beam")
	_reset()

func _reset():
	get_tree().reload_current_scene()
