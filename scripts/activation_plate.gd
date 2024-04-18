extends Area2D

class_name ActivationPlate

signal chest_touch
signal chest_outside

@onready var animation_power: AnimatedSprite2D = $AnimatedSprite2D

func _on_body_entered(_body: Node2D) -> void:
	chest_touch.emit()
	
func _on_body_exited(_body: Node2D) -> void:
	chest_outside.emit()

func on() -> void:
	animation_power.play("on")

func off() -> void:
	animation_power.play("off")



