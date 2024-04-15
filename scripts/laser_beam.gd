extends Area2D

class_name LaserBeam

signal player_touch
signal chest_touch

@onready var animation_sprite: AnimatedSprite2D = $Animation
@onready var collision_shape: CollisionShape2D = $CollisionShape

func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		player_touch.emit()
	if body is Chest:
		chest_touch.emit()
		
func off_laser(change_laser_position: Vector2) -> void:
	animation_sprite.position = change_laser_position
	collision_shape.position = change_laser_position

func on_laser() -> void:
	animation_sprite.position.y = 0
	collision_shape.position.y = 0
	
