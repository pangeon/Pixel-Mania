extends Game

class_name Level3

@onready var laser_beam: LaserBeam = $Objects/LaserBeam

var lock_laser_beam: Array[bool] = [false, false, false, false]

func _process(_delta) -> void:
	if lock_laser_beam == [true, true, true, true]:
		laser_beam.off()
	else:
		laser_beam.on()

func _on_activation_plate_chest_touch() -> void:
	lock_laser_beam[0] = true

func _on_activation_plate_2_chest_touch() -> void:
	lock_laser_beam[1] = true

func _on_activation_plate_3_chest_touch() -> void:
	lock_laser_beam[2] = true

func _on_activation_plate_4_chest_touch()  -> void:
	lock_laser_beam[3] = true

func _on_activation_plate_chest_outside() -> void:
	lock_laser_beam[0] = false

func _on_activation_plate_2_chest_outside() -> void:
	lock_laser_beam[1] = false

func _on_activation_plate_3_chest_outside() -> void:
	lock_laser_beam[2] = false

func _on_activation_plate_4_chest_outside() -> void:
	lock_laser_beam[3] = false
