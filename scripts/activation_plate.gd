extends Area2D

class_name ActivationPlate

signal chest_touch
signal chest_outside

@onready var animation_power: AnimatedSprite2D = $AnimatedSprite2D

func _on_body_entered(_body: Node2D) -> void:
	chest_touch.emit()
	_on()
	
func _on_body_exited(_body: Node2D) -> void:
	chest_outside.emit()
	_off()

func _on() -> void:
	animation_power.play("on")

func _off() -> void:
	animation_power.play("off")



