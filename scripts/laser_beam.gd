extends Area2D

class_name LaserBeam

signal player_touch
signal chest_touch

@onready var animation_sprite: AnimatedSprite2D = $Animation
@onready var collision_shape: CollisionShape2D = $CollisionShape

func _ready() -> void:
	pass

func _process(_delta) -> void:
	pass

func _on_body_entered(body) -> void:
	if body is Player:
		player_touch.emit()
	if body is Chest:
		chest_touch.emit()
#		animation_sprite.position.y = 36
#		collision_shape.position.y = 36 
		
