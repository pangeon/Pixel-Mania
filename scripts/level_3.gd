extends Game

class_name Level3

@onready var activation_plates: Array[ActivationPlate] = [
	$Objects/ActivationPlate, 
	$Objects/ActivationPlate2,
	$Objects/ActivationPlate3, 
	$Objects/ActivationPlate4,
]
@onready var laser_beam: LaserBeam = $Objects/LaserBeam

var lock_laser_beam: Array[bool] = [false, false, false, false]

func _process(_delta):
	if lock_laser_beam == [true, true, true, true]:
		laser_beam.off()
	else:
		laser_beam.on()

func _on_activation_plate_chest_touch():
	lock_laser_beam[0] = true
	activation_plates[0].on()

func _on_activation_plate_2_chest_touch():
	lock_laser_beam[1] = true
	activation_plates[1].on()

func _on_activation_plate_3_chest_touch():
	lock_laser_beam[2] = true
	activation_plates[2].on()

func _on_activation_plate_4_chest_touch():
	lock_laser_beam[3] = true
	activation_plates[3].on()



func _on_activation_plate_chest_outside():
	lock_laser_beam[0] = false
	activation_plates[0].off()

func _on_activation_plate_2_chest_outside():
	lock_laser_beam[1] = false
	activation_plates[1].off()

func _on_activation_plate_3_chest_outside():
	lock_laser_beam[2] = false
	activation_plates[2].off()

func _on_activation_plate_4_chest_outside():
	lock_laser_beam[3] = false
	activation_plates[3].off()
