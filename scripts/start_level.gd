extends Game

class_name StartLevel

@onready var laser_beam: LaserBeam = $Objects/LaserBeam
@onready var activation_plate: ActivationPlate = $Objects/ActivationPlate
 
func _on_activation_plate_chest_touch() -> void:
	laser_beam.off()
	activation_plate.on()

func _on_activation_plate_chest_outside() -> void:
	laser_beam.on()
	activation_plate.off()

	
