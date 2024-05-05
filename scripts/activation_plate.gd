extends Area2D

class_name ActivationPlate

signal chest_touch
signal chest_outside

@onready var animation_power: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	$".".add_child(
		Component.get_sound_loader("res://assets/music/push_plate_sound.mp3", "PushPlateSound")
	)
	
func _on_body_entered(_body: Node2D) -> void:
	var push_sound: AudioStreamPlayer2D = $".".get_node("PushPlateSound")
	push_sound.play()
	chest_touch.emit()
	_on()
	
func _on_body_exited(_body: Node2D) -> void:
	var push_sound: AudioStreamPlayer2D = $".".get_node("PushPlateSound")
	push_sound.play()
	chest_outside.emit()
	_off()

func _on() -> void:
	animation_power.play("on")

func _off() -> void:
	animation_power.play("off")



