extends RigidBody2D

class_name Chest

@export var max_speed: float = 0
@export var gravity: float = 0
@export var chest_texture: Texture2D = preload("res://assets/img/chest_16-24px.png")

func _ready() -> void:
	set_gravity_scale(gravity)
	set_contact_monitor(true)
	set_lock_rotation_enabled(true)
	$Sprite2D.set_texture(chest_texture)

func _physics_process(_delta: float) -> void:
	var current_velocity: float = linear_velocity.length()
	if current_velocity > max_speed:
		linear_velocity = linear_velocity.normalized() * max_speed

func on_gravity(direction: int = 0) -> void:
	if direction == 0:
		set_gravity_scale(10.0)
	elif direction == 1:
		set_gravity_scale(-10.0)
	else:
		pass
	
