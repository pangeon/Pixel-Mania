extends RigidBody2D

class_name Chest

@export var max_speed: float = 0
@export var gravity: float = 0

func _ready() -> void:
	set_gravity_scale(gravity)
	set_contact_monitor(true)
	set_lock_rotation_enabled(true)

func _physics_process(_delta) -> void:
	var current_velocity: float = linear_velocity.length()
	if current_velocity > max_speed:
		linear_velocity = linear_velocity.normalized() * max_speed

