extends Area2D

class_name ActivationPlate

signal chest_touch
signal chest_outside

@onready var animation_power: AnimatedSprite2D = $AnimatedSprite2D
@export var is_gravity_switcher: bool = false
var is_gravity_switcher_click: bool = false

func _ready() -> void:
	if is_gravity_switcher == true:
		animation_power.play("gravity_down")
	
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
	
	if is_gravity_switcher == false:
		push_sound.play()
	
	chest_outside.emit()
	_off()

func _on() -> void:
	if is_gravity_switcher == false:
		animation_power.play("on")
	else:
		if is_gravity_switcher_click == false:
			animation_power.play("gravity_up")
			is_gravity_switcher_click = true
		else:
			animation_power.play("gravity_down")
			is_gravity_switcher_click = false

func _off() -> void:
	if is_gravity_switcher == false:
		animation_power.play("off")
	else:
		pass



