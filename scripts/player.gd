extends CharacterBody2D

class_name Player

@export var speed: float = 1.5
@export var push_force: float = 15000
@export var laser_sound_path = "res://assets/music/hit_laser_sound.wav"

@onready var animation: AnimatedSprite2D = $Sprite2D
@onready var hit_laser_sound: AudioStreamPlayer2D = AudioStreamPlayer2D.new()

var warp_speed: float = 1

func _ready() -> void:
	hit_laser_sound.name = "HitLaserSound"
	hit_laser_sound.set_stream(load(laser_sound_path))
	$".".add_child(hit_laser_sound)
	
	position = Globals.PLAYER_START # (51, 303)
	var laser_beams: Array[Node] = get_tree().get_nodes_in_group("laser_beams")
	
	for laser in laser_beams:
		laser.player_touch.connect(_on_laser_beam_player_touch)

func _physics_process(_delta: float) -> void:
	velocity = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		velocity.x += speed*warp_speed
	if Input.is_action_pressed("move_left"):
		velocity.x -= speed*warp_speed
	if Input.is_action_pressed("move_down"):
		velocity.y += speed*warp_speed
	if Input.is_action_pressed("move_up"):
		velocity.y -= speed*warp_speed
	if Input.is_action_pressed("warp_speed"):
		warp_speed = 2
	if Input.is_action_just_released("warp_speed"):
		warp_speed = 1
	if Input.is_action_pressed("reset"):
		_reset(0.3)
		
	var collision: KinematicCollision2D = move_and_collide(velocity)
	
	if collision:
		var direction: Vector2 = collision.get_normal()
		var collider: Object = collision.get_collider()
		if collider is RigidBody2D:
			collider.apply_force(-direction * push_force)
	
func print_player_position() -> void:
	print("x=", int(position.x), " | y=", int(position.y))

func _on_laser_beam_player_touch() -> void:
	_die_animation()
	_play_hit_laser_sound()
	_reset(0.5)

func _reset(time_to_reset: float) -> void:
	await get_tree().create_timer(time_to_reset).timeout
	get_tree().reload_current_scene()

func _die_animation() -> void:
	animation.z_index = -1
	animation.play("die")

func _play_hit_laser_sound() -> void:
	hit_laser_sound.play()








