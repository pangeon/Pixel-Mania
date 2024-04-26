extends Game

class_name Level4

@onready var laser_beams: Array[LaserBeam] = [
	$Objects/LaserBeam, 
	$Objects/LaserBeam2, 
	$Objects/LaserBeam3, 
	$Objects/LaserBeam4
]

@onready var activation_plates: Array[ActivationPlate] = [
	$Objects/ActivationPlate, 
	$Objects/ActivationPlate2, 
	$Objects/ActivationPlate3, 
	$Objects/ActivationPlate4
]

func _on_activation_plate_chest_touch() -> void:
	activation_plates[0].on()
	laser_beams[2].off()

func _on_activation_plate_chest_outside() -> void:
	activation_plates[0].off()
	laser_beams[2].on()

func _on_activation_plate_2_chest_touch() -> void:
	activation_plates[1].on()
	laser_beams[0].off()

func _on_activation_plate_2_chest_outside() -> void:
	activation_plates[1].off()
	laser_beams[0].on()

func _on_activation_plate_3_chest_touch() -> void:
	activation_plates[2].on()
	laser_beams[1].off()

func _on_activation_plate_3_chest_outside() -> void:
	activation_plates[2].off()
	laser_beams[1].on()

func _on_activation_plate_4_chest_touch() -> void:
	activation_plates[3].on()
	laser_beams[3].off()

func _on_activation_plate_4_chest_outside() -> void:
	activation_plates[3].off()
	laser_beams[3].on()
