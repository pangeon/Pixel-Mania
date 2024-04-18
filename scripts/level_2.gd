extends Game

class_name Level2

@onready var laser_beams: Array[LaserBeam] = [$Objects/LaserBeam, $Objects/LaserBeam2, $Objects/LaserBeam3]
@onready var activation_plates: Array[ActivationPlate] = [$Objects/ActivationPlate, $Objects/ActivationPlate2]

func _on_activation_plate_chest_touch() -> void:
	laser_beams[0].off()
	laser_beams[1].off()
	activation_plates[0].on()

func _on_activation_plate_2_chest_touch() -> void:
	laser_beams[2].off()
	activation_plates[1].on()
	
func _on_activation_plate_chest_outside() -> void:
	laser_beams[0].on()
	laser_beams[1].on()
	activation_plates[0].off()

func _on_activation_plate_2_chest_outside() -> void:
	laser_beams[2].on()
	activation_plates[1].off()


