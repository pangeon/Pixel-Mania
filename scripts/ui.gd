extends CanvasLayer

@export var level: int = 0

func _ready():
	$Control/Label.text = "LEVEL: " + str(level)
