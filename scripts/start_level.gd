extends Game

class_name StartLevel

@onready var laser_beam: LaserBeam = $Objects/LaserBeam
@onready var activation_plate: ActivationPlate = $Objects/ActivationPlate
 
func _on_activation_plate_chest_touch() -> void:
	laser_beam.off_laser(Vector2(0, 38))
	activation_plate.on_power_plate()

func _on_activation_plate_chest_outside() -> void:
	laser_beam.on_laser()
	activation_plate.off_power_plate()

	
