extends Node2D

@onready var laser_beam: LaserBeam = $LaserBeam
@onready var activation_plate: ActivationPlate = $ActivationPlate
 
func _on_activation_plate_chest_touch() -> void:
	laser_beam.off_laser()
	activation_plate.on_power_plate()

func _on_activation_plate_chest_outside() -> void:
	laser_beam.on_laser()
	activation_plate.off_power_plate()
