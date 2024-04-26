extends Game

class_name Level4

@onready var laser_beams: Array[LaserBeam] = [
	$Objects/LaserBeam, $Objects/LaserBeam2, $Objects/LaserBeam3, $Objects/LaserBeam4
]

@onready var activation_plates: Array[ActivationPlate] = [
	$Objects/ActivationPlate
]

func _on_activation_plate_chest_touch() -> void:
	activation_plates[0].on()
	laser_beams[2].off()

func _on_activation_plate_chest_outside() -> void:
	activation_plates[0].off()
	laser_beams[2].on()
