extends Game

class_name StartLevel

@onready var laser_beam: LaserBeam = $Objects/LaserBeam
 
func _on_activation_plate_chest_touch() -> void:
	laser_beam.off()

func _on_activation_plate_chest_outside() -> void:
	laser_beam.on()

	
