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
		
func off() -> void:
	animation_sprite.position = Vector2(558, 558)
	collision_shape.position = Vector2(558, 558)

func on() -> void:
	animation_sprite.position = Vector2(0, 0)
	collision_shape.position = Vector2(0, 0)
	
